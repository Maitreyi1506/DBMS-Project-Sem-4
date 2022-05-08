###################
#     TRIGGERS
###################
DELIMITER $$
CREATE TRIGGER addVehicle 
AFTER INSERT ON team10_application FOR EACH ROW
BEGIN
	IF (NEW.Vehicle_Id IS NOT NULL) THEN
    INSERT INTO team10_vehicle(Vehicle_Id, Cust_Id) VALUES (NEW.Vehicle_Id, NEW.Cust_Id);
    END IF;
END;
$$