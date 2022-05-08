/* QUERY 1ST PROBLEM */
CREATE VIEW pendingClaims AS
SELECT Cust_Id, Agreement_ID FROM TEAM10_CLAIM WHERE upper(claim_status) = 'PENDING';

SELECT * FROM TEAM10_VEHICLE NATURAL JOIN TEAM10_CUSTOMER 
WHERE Policy_Id IN (SELECT Policy_Number FROM TEAM10_INSURANCE_POLICY WHERE Agreement_ID IN (SELECT Agreement_ID FROM pendingClaims));
 
/* QUERY 2ND PROBLEM */
DELIMITER $$
CREATE FUNCTION sum_customerIDs()
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE sum INT;
	SET sum = (SELECT sum(cust_id) FROM TEAM10_CUSTOMER);
    RETURN sum;
END;
$$

SELECT * FROM team10_customer
WHERE team10_customer.cust_id IN
(SELECT r.cust_id FROM team10_premium_payment_receipt AS r
INNER JOIN team10_premium_payment AS p
ON p.Premium_Payment_Id = r.Premium_Payment_Id 
WHERE p.Premium_Payment_Amount > sum_customerIDs());

/* QUERY 3RD PROBLEM */
CREATE VIEW No_of_products AS
SELECT Company_Name, count(Product_Number) AS NP FROM team10_product
GROUP BY Company_Name;

DELIMITER $$
CREATE FUNCTION getNumOfOffices(DepartmentID char(18))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE numberOfOffices INT;
    SET numberOfOffices = (SELECT COUNT(*) FROM TEAM10_OFFICE WHERE Department_ID = DepartmentID);
	RETURN numberOfOffices;
END;
$$

CREATE VIEW No_of_departments AS
SELECT Company_Name, count(Department_ID) AS ND FROM team10_department
WHERE getNumOfOffices(Department_ID) > 1
GROUP BY Company_Name;

SELECT * FROM team10_insurance_company WHERE Company_Name IN (
SELECT No_of_products.Company_Name FROM No_of_products LEFT JOIN No_of_departments ON No_of_products.Company_Name = No_of_departments.Company_Name
WHERE NP > IFNULL(ND, 0));

/* QUERY 4TH PROBLEM */
DELIMITER $$
CREATE FUNCTION getLatestPaymentDate(Vehicle_Id_Num INT)
RETURNS DATE
DETERMINISTIC
BEGIN
	DECLARE lastDate DATE;
    DECLARE associatedPolicyNum VARCHAR(20);
    SET associatedPolicyNum = (SELECT Policy_ID FROM TEAM10_VEHICLE WHERE Vehicle_Id = Vehicle_Id_Num);
    SET lastDate = (SELECT Time FROM TEAM10_PREMIUM_PAYMENT_RECEIPT NATURAL JOIN TEAM10_RECEIPT WHERE Policy_Number = associatedPolicyNum ORDER BY Time DESC LIMIT 1);
	RETURN lastDate;
END;
$$

DELIMITER $$
CREATE FUNCTION findNumberOfCars(Customer INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE numberOfCars INT;
    SET numberOfCars = (SELECT COUNT(*) FROM TEAM10_VEHICLE WHERE Cust_Id = Customer AND Policy_Id IS NOT NULL GROUP BY Cust_Id);
	RETURN numberOfCars;
END;
$$

SELECT DISTINCT Cust_Id FROM TEAM10_INCIDENT_REPORT 
INNER JOIN TEAM10_INCIDENT ON TEAM10_INCIDENT_REPORT.Incident_Id = TEAM10_INCIDENT.Incident_Id 
WHERE findNumberOfCars(Cust_Id) > 1 AND DATEDIFF(Incident_Date, getLatestPaymentDate(Vehicle_Id)) > 365; 

/* QUERY 5TH PROBLEM */
CREATE VIEW VehicleListPremiumNumber AS
(
	SELECT DISTINCT (Vehicle_Id) FROM TEAM10_VEHICLE AS T1 
	INNER JOIN TEAM10_CUSTOMER AS T2 ON T1.Cust_Id = T2.Cust_Id
	INNER JOIN TEAM10_PREMIUM_PAYMENT_RECEIPT AS T3 ON T2.Cust_Id = T3.Cust_Id
	INNER JOIN TEAM10_PREMIUM_PAYMENT AS T4 ON T3.Premium_Payment_ID = T4.Premium_Payment_Id
	WHERE T1.Vehicle_Number < T4.Premium_Payment_Amount AND Policy_Number = Policy_Id
);

SELECT * FROM TEAM10_VEHICLE WHERE Vehicle_Id IN (SELECT * FROM VehicleListPremiumNumber);

/* QUERY 6TH PROBLEM */
SELECT DISTINCT cus.*
FROM team10_claim c
INNER JOIN team10_customer cus ON c.Cust_Id = cus.Cust_Id
INNER JOIN team10_claim_settlement cs ON cus.Cust_Id = cs.Cust_Id
INNER JOIN team10_coverage cov ON cs.Coverage_Id = cov.Coverage_Id
WHERE c.claim_amount>(cs.claim_settlement_id+cs.vehicle_id+cs.claim_id+cs.cust_id)
AND c.claim_amount<cov.coverage_amount;