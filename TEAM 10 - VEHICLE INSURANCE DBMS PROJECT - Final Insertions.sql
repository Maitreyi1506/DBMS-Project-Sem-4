/*////////////////////////
	INSERT STATEMENTS
////////////////////////*/
DELIMITER $$
CREATE PROCEDURE InsertAllValues()
BEGIN
	INSERT INTO TEAM10_CUSTOMER VALUES 
	(150,'Chara','Waltz','1997-08-21','F','123, ABC Street, 459723',8979838634,'charaw@gmail.com','1972391287','Single',19834863),
	(151,'Axel','Berg','1995-01-09','M','281, Bournemouth St., England',9975828531,'axelb@gmail.com','823164132','Married',928398918),
	(152,'Warden','Tomcic','1994-10-29','M','21, Rostov St., Russia',7648683324,'warden@gmail.com','83742937','Single',982349634),
	(153,'Blathnat','Otto','1982-11-12','F','9549, Prospect Lane, Livonia',7628483632,'ottotto@gmail.com','12389237','Divorced',98345628),
	(154,'Hale','Veen','1976-01-08','M','4312, Kent St., England',7125462581,'halev@hotmail.com','83264824','Married',89374122),
	(155,'Nuria','Sigurdsson','1969-04-27','F','180, West Court, Westland',9135566527,'nuriarox@hotmail.com','8734234','Single',982374897),
	(156,'Ramond','Sanchez','1993-12-21','M','10, Downing Street, England', 9169428111,'ramsan@gmail.com','2174311682','Married', 39164821),
	(157,'Javier','Hernandez','1989-05-12','M','12, Central Avenue, LA', 9285428612,'jhernan@yahoo.com','2271512511','Single', 31572420),
    (158,'Kiara','Advani','1999-10-01','F','561, Church Street, Hyderabad',9776833668,'kiaraad@gmail.com','29723614893','Married',65637863),
	(159,'Homer','Kumar','1984-06-15','M','6897, Rose Quartz Street',9879863679,'homerk@gmail.com','9472364739','Divorced',82977857),
    (160,'Sara','Ujjwal','1998-02-18','F','283, MG Road, Delhi',8798637829,'ujjwalsara@gmail.com','5843643572','Married',32142862);

	INSERT INTO TEAM10_APPLICATION VALUES
	('AP20191', 557000, 'PENDING', 'Liability', 151),
	('AP20182', 557001, 'ACCEPTED', 'Collision', 152),
	('AP20153', 557002, 'RECEIVED', 'Liability', 153),
	('AP20204', 557003, 'ACCEPTED', 'Personal Injury', 153),
	('AP20215', 557004, 'PENDING', 'Comprehensive', 154),
	('AP20176', 557005, 'ACCEPTED', 'Collision', 155),
	('AP20187', 557006, 'ACCEPTED', 'Medical Payments', 155),
	('AP20231', 557007, 'ACCEPTED', 'Comprehensive', 156),
	('AP20221', 557008, 'ACCEPTED', 'Accident', 156),
	('AP20232', 557009, 'ACCEPTED', 'Personal Injury', 157),
	('AP20222', 557010, 'ACCEPTED', 'Accident', 157),
    ('AP20223', 557011, 'ACCEPTED', 'Liability', 158),
    ('AP20224', 557012, 'ACCEPTED', 'Collision', 158),
    ('AP20225', 557013, 'ACCEPTED', 'Personal Injury', 159),
    ('AP20226', 557014, 'ACCEPTED', 'Collision', 159),
    ('AP20227', 557015, 'ACCEPTED', 'Medical Payments', 160),
    ('AP20228', 557016, 'ACCEPTED', 'Comprehensive', 160);

	INSERT INTO TEAM10_INSURANCE_COMPANY VALUES
	('SBI General Insurance', '7th Floor, Peninsula Tower, Mumbai', 9237497322, 2228888, 'contact@sbi.in', 'www.onlinesbi.com', 'Andheri East'),
	('Bajaj Allianz Limited', '4th Floor, 6-130, ING Vysya Bank Market Road, Telangana', 9134692342, 2227474, 'info@bajaj.in', 'www.bajajallianz.com', 'Bhadradri Kothagudem'),
	('ICICI Insurance Co.', '189 Jijamata Marg, Worli, Mumbai', 9134452311, 2225555, 'insurance@icici.com', 'www.icicibank.com', 'Worli East'),
	('Aviva Insurance', '275, Peddar Road, Mumbai', 9168527482, 2222345, 'care@aviva.com', 'www.avivalife.com', 'Peddar Road'),
	('Kotak Vehicle Insurance', '2nd Floor, Plot # C- 12, G- Block, BKC, Bandra (E), Mumbai', 9772113292, 2221421, 'insurance@kotak.com', 'www.kotaklife.com', 'Bandra West'),
    ('PNB MetVehicle Ltd', '8th Street, The Ninth, Paris', 8245497233, 2228999, 'contacthelp@pnb.in', 'www.pnbmetlife.com', 'Paris France'),
    ('Cars24 vehicle insurance', '9th Street, NM Street, Bengaluru', 9249597230, 2267899, 'contact@cars24.in', 'www.cars24.com', 'Bengaluru India'),
	('Isha vehicle insurance', '10th Street, Applebees Street, Delhi', 9249467298, 2457890, 'care@ishacar.in', 'www.ishacare.com', 'Delhi India'),
    ('Priya Insurance', '4638, Rajajinagar, Bengaluru', 9247467237, 2387800, 'help@priyains.in', 'www.priyains.com', 'Gokul Nagar'),
    ('Ganesh Company', '5633, Narayan Complex, Mysore', 8749547267, 2454190, 'care@ganes.in', 'www.ganeshcare.com', 'Mysore India');

	INSERT INTO TEAM10_PRODUCT VALUES
	(123, 'SBI General Insurance', 55000, '4 Wheeler'),
	(124, 'SBI General Insurance', 70000, '4 Wheeler - E'),
	(125, 'SBI General Insurance', 90000, '4 Wheeler - L'),
	(126, 'Bajaj Allianz Limited', 54000, '4 Wheeler'),
	(127, 'Bajaj Allianz Limited', 71000, '4 Wheeler - E'),
	(128, 'Bajaj Allianz Limited', 90000, '4 Wheeler - L'),
	(129, 'Bajaj Allianz Limited', 85000, '4 Wheeler - B'),
	(130, 'ICICI Insurance Co.', 50000, '4 Wheeler'),
	(131, 'ICICI Insurance Co.', 65000, '4 Wheeler - E'),
	(132, 'ICICI Insurance Co.', 80000, '4 Wheeler - L'),
	(133, 'Kotak Vehicle Insurance', 52500, '4 Wheeler'),
	(134, 'Kotak Vehicle Insurance', 675000, '4 Wheeler - E'),
	(135, 'Aviva Insurance', 30000, '4 Wheeler'),
    (136, 'PNB MetVehicle Ltd', 25000, '2 Wheeler'),
    (137, 'PNB MetVehicle Ltd', 75000, '4 Wheeler - L'),
    (138, 'Cars24 vehicle insurance', 55000, '4 Wheeler - E'),
	(139, 'Cars24 vehicle insurance', 95000, '4 Wheeler - B'),
    (140, 'Isha vehicle insurance', 35000, '2 Wheeler'),
    (141, 'Priya Insurance', 45000, '4 Wheeler - E'),
    (142, 'Priya Insurance', 185000, '4 Wheeler - B'),
    (143, 'Ganesh Company', 25000, '2 Wheeler'),
    (144, 'Ganesh Company', 45000, '4 Wheeler');
    
    INSERT INTO TEAM10_COVERAGE VALUES
	("CV20221",1850000,"Collision","Bronze",124,"Coverage against damage to vehicle involved in a collision","6 Years","Bajaj Allianz Limited"),
	("CV20192",1500000,"Collision","Silver",125,"Coverage against damage to engine involved in collision","5 Years","Bajaj Allianz Limited"),
	("CV20203",1650000,"Collision","Silver",128,"Coverage against damage to vehicle in a collision","3 Years","SBI General Insurance"),
	("CV20214",1800000,"Liability","Gold",123,"Coverage provided to a beneficiary","5 Years","SBI General Insurance"),
	("CV20195",1880000,"Collision","Gold",126,"Coverage against damage to vehicle involved in collision","4 Years","SBI General Insurance"),
	("CV20186",1920000,"Personal injury","Gold",129,"Coverage for any medical expenses incurred during an accident","4 Years","Bajaj Allianz Limited"),
	("CV20227",1980000,"Personal injury","Platinum",127,"Coverage for any medical expenses incurred during an accident","5 Years","Bajaj Allianz Limited"),
	("CV20242",1550000,"Collision", "Bronze", 130,"Coverage against any damage to vehicle involved in an accident","4 Years", "ICICI Insurance Co."),
	("CV20243",1700000,"Collision", "Silver", 131,"Coverage against any damage to vehicle involved in an accident","5 Years", "ICICI Insurance Co."),
	("CV20244",1800000,"Comprehensive", "Gold", 132,"Coverage against any damage to vehicle involved in an accident","6 Years", "ICICI Insurance Co."),
	("CV20251",1450000,"Comprehensive", "Bronze", 133,"Coverage against any damage to vehicle or its parts","4 Years", "Kotak Vehicle Insurance"),
	("CV20252",1650000,"Liability", "Silver", 134,"Coverage against any damage to vehicle or its parts","5 Years", "Kotak Vehicle Insurance"),
	("CV20261",1750000,"Comprehensive", "Gold", 135,"Coverage against any damage to vehicle or its parts","5 Years", "Aviva Insurance"),
    ('CV20262',1320000,'Medical Payments','Bronze',136,'Coverage against health related bills','4 Years','PNB MetVehicle Ltd'),
    ('CV20263',1450000,'Liability','Silver',137,'Coverage provided to a beneficiary','5 Years','PNB MetVehicle Ltd'),
    ('CV20264',1520000,'Collision','Bronze',138,'Coverage against damage to vehicle involved in collision','3 Years','Cars24 vehicle insurance'),
    ('CV20265',1340000,'Medical Payments','Gold',139,'Coverage against health related bills','7 Years','Cars24 vehicle insurance'),
    ('CV20266',1480000,'Liability','Bronze',140,'Coverage provided to a beneficiary','2 Years','Isha vehicle insurance'),
    ('CV20267',1820000,'Comprehensive','Platinum',141,'Coverage against any damage to vehicle or its parts','8 Years','Priya Insurance'),
    ('CV20268',1790000,'Comprehensive','Bronze',142,'Coverage against any damage to vehicle or its parts','4 Years','Priya Insurance'),
    ('CV20269',1620000,'Collision','Gold',143,'Coverage against damage to vehicle involved in collision','5 Years','Ganesh Company');

	INSERT INTO TEAM10_QUOTE VALUES
	(2522, '2020-02-08', '2020-02-08', '2025-02-08', 'Skoda Octavia', 123, 'Gold', 'AP20191', 151),
	(2523, '2019-12-03', '2019-12-03', '2025-12-03', 'Honda Amaze', 124, 'Bronze', 'AP20182', 152),
	(2524, '2021-10-09', '2021-10-09', '2026-11-06', 'Jeep Compass', 125, 'Silver', 'AP20153', 153),
	(2525, '2021-09-02', '2021-09-02', '2025-09-02', 'Hyundai Creta', 126, 'Gold', 'AP20204', 153),
	(2526, '2021-03-08', '2021-03-08', '2026-10-18', 'Toyota Innova', 127, 'Platinum', 'AP20215', 154),
	(2527, '2021-02-17', '2021-02-17', '2024-02-17', 'Maruti 800', 128, 'Silver', 'AP20176', 155),
	(2528, '2021-11-02', '2021-11-02', '2025-11-02', 'Suzuki Alto', 129, 'Gold', 'AP20187', 155),
	(2529, '2022-03-12', '2022-03-12', '2026-03-12', 'Nissan Sunny', 130, 'Bronze', 'AP20231', 156),
	(2530, '2022-06-23', '2022-06-23', '2028-06-23', 'Honda Civic', 132, 'Gold', 'AP20221', 156),
	(2531, '2018-10-23', '2018-10-23', '2023-10-23', 'XUV 500', 134, 'Silver', 'AP20232', 157),
	(2532, '2020-04-11', '2020-04-11', '2025-04-11', 'Hyundai Verna', 135, 'Gold', 'AP20222', 157),
    (2533, '2021-12-18', '2021-12-18', '2025-12-18', 'Maruti Zen', 136, 'Bronze', 'AP20223', 158),
    (2534, '2021-11-01', '2021-11-01', '2026-11-01', 'Mahindra Bolero', 137, 'Silver', 'AP20224', 158),
    (2535, '2020-08-21', '2020-08-21', '2023-08-21', 'Tata Punch', 138, 'Bronze', 'AP20225', 159),
    (2536, '2021-10-23', '2021-10-23', '2028-10-23', 'Mahindra XUV 700', 139, 'Gold', 'AP20226', 159),
    (2537, '2020-06-15', '2020-06-15', '2022-06-15', 'Toyota Fortuner', 140, 'Bronze', 'AP20227', 160),
    (2538, '2019-09-08', '2019-09-08', '2027-09-08', 'Kia Seltos', 141, 'Platinum', 'AP20228', 160);

	INSERT INTO TEAM10_INSURANCE_POLICY VALUES
	('AG2019152', 'Tyre Department', '2019152/100/1', '2019-12-03', '2025-12-03', 'Coverage against damage to vehicle involved in collision', 'AP20182', 152),
	('AG2021153', 'Injury Department', '2021153/100/2', '2021-09-02', '2025-09-02', 'Coverage against damage or harm to self while involved in a vehicular accident', 'AP20204', 153),
	('AG20211551', 'Engine Department', '2021155/100/1', '2021-02-17', '2024-02-17', 'Coverage against damage to engine involved in collision', 'AP20176', 155),
	('AG20211552', 'Injury Department', '2021155/100/2', '2021-11-02', '2025-11-02', 'Coverage for any medical expenses incurred during an accident', 'AP20187', 155),
	('AG20221561', 'Engine Department', '2022156/100/1', '2022-03-12', '2026-03-12', 'Coverage against any damage to vehicle', 'AP20231', 156),
	('AG20221562', 'Payment Department', '2022156/100/2', '2022-06-23', '2028-06-23', 'Coverage against any damage to vehicle involved in accident', 'AP20221', 156),
	('AG2018157', 'Injury Department', '2018157/100/1', '2018-10-23', '2023-10-23', 'Coverage against damage or harm to self while involved in a vehicular accident', 'AP20232', 157),
	('AG2020157', 'Injury Department', '2020157/100/1', '2020-04-11', '2025-04-11', 'Coverage against any damage to vehicle involved in accident', 'AP20222', 157),
    ('AG20211581', 'Injury Department', '2021158/100/1', '2021-12-18', '2025-12-18', 'Coverage against health related bills', 'AP20223', 158),
    ('AG20211582', 'Payment Department', '2021158/100/2', '2021-11-01', '2026-11-01', 'Coverage provided to a beneficiary', 'AP20224', 158),
    ('AG2020159', 'Engine Department', '2020159/100/1', '2020-08-21', '2023-08-21', 'Coverage against damage to vehicle involved in collision', 'AP20225', 159),
    ('AG2021159', 'Injury Department', '2021159/100/1', '2021-10-23', '2028-10-23', 'Coverage against health related bills', 'AP20226', 159),
    ('AG2020160', 'Payment Department', '2020160/100/1', '2020-06-15', '2022-06-15', 'Coverage provided to a beneficiary', 'AP20227', 160),
    ('AG2019160', 'Engine Department', '2019160/100/1', '2019-09-08', '2027-09-08', 'Coverage against any damage to vehicle or its parts', 'AP20228', 160);

	INSERT INTO TEAM10_DEPARTMENT VALUES
	( 'LE101', 'Legal', 'Emanuel Mathew', 'Bajaj Allianz Limited'),
	( 'RI101', 'Reinsurance', 'Farhan Shallam', 'Bajaj Allianz Limited'),
	( 'CL101', 'Claims', 'Justin Stanley', 'Bajaj Allianz Limited'),
	( 'CL102', 'Claims', 'Ramanand Balaji', 'SBI General Insurance'),
	( 'LE102', 'Legal', 'Anand Narayan', 'SBI General Insurance'),
	( 'RE101', 'Reimbursement', 'Rachel Greene', 'Bajaj Allianz Limited'),
	( 'AU101', 'Audit', 'Aditya T', 'Bajaj Allianz Limited'),
	( 'AC101', 'Accounting', 'Norman Stark', 'Bajaj Allianz Limited'),
	( 'RE102', 'Reimbursement', 'Sudha Madhusudhan', 'SBI General Insurance'),
	( 'AC102', 'Accounting', 'Gael Nwande', 'SBI General Insurance'),
    ( 'LE103', 'Legal', 'Aditya Shetty', 'PNB MetVehicle Ltd'),   
    ( 'CL103', 'Claims', 'Aditi Suvarna', 'PNB MetVehicle Ltd'),   
    ( 'AU104', 'Audit', 'Aditya Sunil', 'Cars24 vehicle insurance'),   
    ( 'RE105', 'Reimbursement', 'Vidya Seth', 'Priya Insurance'),   
    ( 'CL105', 'Claims', 'Soumya Singh', 'Priya Insurance'),   
    ( 'AC106', 'Accounting', 'Siddhi Vinayak', 'Isha vehicle insurance');

	INSERT INTO TEAM10_INSURANCE_POLICY_COVERAGE VALUES
	("AG2019152","AP20182",152,"CV20221","Bajaj Allianz Limited"),
	("AG2021153","AP20204",153,"CV20186","Bajaj Allianz Limited"),
	("AG20211551","AP20176",155,"CV20203","SBI General Insurance"),
	("AG20211552","AP20187",155,"CV20227","Bajaj Allianz Limited"),
	("AG20221561","AP20231",156,"CV20242","ICICI Insurance Co."),
	("AG20221562","AP20221",156,"CV20244","ICICI Insurance Co."),
	("AG2018157","AP20232",157,"CV20252","Kotak Vehicle Insurance"),
	("AG2020157","AP20222",157,"CV20261","Aviva Insurance"),
    ('AG20211581','AP20223', 158,'CV20262','PNB MetVehicle Ltd'),
    ('AG20211582','AP20224', 158,'CV20263','PNB MetVehicle Ltd'),
    ('AG2020159','AP20225', 159,'CV20264','Cars24 vehicle insurance'),
    ('AG2021159','AP20226', 159,"CV20265",'Cars24 vehicle insurance'),
    ('AG2020160','AP20227', 160,"CV20266",'Isha vehicle insurance'),
    ('AG2019160','AP20228', 160,"CV20267",'Priya Insurance');

	INSERT INTO TEAM10_PREMIUM_PAYMENT VALUES
	('212001','1800','2020-12-03'),
	('213001','1800','2021-12-03'),
	('214001','1800','2022-12-03'),
	('212002','1600','2020-09-02'),
	('212003','1500','2021-02-17'),
	('212004','1800','2021-11-02'),
    ('212045','1800','2022-03-12'),
    ('212048','1800','2020-04-11'),
    ('212005','1600','2021-12-18'),
    ('213005','1600','2022-12-18'),
    ('214005','1600','2023-12-18'),
	('212006','1500','2021-11-01'),
    ('212007','1800','2020-08-21'),
    ('213007','1800','2021-08-21'),
    ('214007','1800','2022-08-21'),
	('212008','1600','2021-10-23'),
	('212009','1500','2020-06-15'),
    ('212010','1800','2019-09-08');

	INSERT INTO TEAM10_RECEIPT VALUES
	('10001','2020-12-03','1800'),
	('11001','2021-12-03','1800'),
	('12001','2022-12-03','1800'),
	('10002','2020-09-02','1600'),
	('10003','2022-02-17','1500'),
	('10004','2021-11-02','1800'),
    ('13000','2022-03-12','1800'),
    ('13001','2020-04-11','1800'),
    ('10005','2021-12-18','1600'),
	('11005','2022-12-18','1600'),
	('12005','2023-12-18','1600'),
	('10006','2021-11-01','1500'),
	('10007','2020-08-21','1800'),
	('11007','2021-08-21','1800'),
	('12007','2022-08-21','1800'),
    ('10008','2021-10-23','1600'),
	('10009','2020-06-15','1500'),
    ('10010','2019-09-08','1800');

	INSERT INTO TEAM10_PREMIUM_PAYMENT_RECEIPT VALUES
	('212001','10001','152','2019152/100/1'),
	('213001','11001','152','2019152/100/1'),
	('214001','12001','152','2019152/100/1'),
	('212002','10002','153','2021153/100/2'),
	('212003','10003','155','2021155/100/1'),
	('212004','10004','155','2021155/100/2'),
    ('212045','13000','156','2022156/100/1'),
    ('212048','13001','157','2020157/100/1'),
    ('212005','10005','158','2021158/100/1'),
    ('213005','11005','158','2021158/100/1'),
    ('214005','12005','158','2021158/100/1'),
    ('212006','10006','158','2021158/100/2'),
    ('212007','10007','159','2020159/100/1'),
    ('213007','11007','159','2020159/100/1'),
    ('214007','12007','159','2020159/100/1'),
    ('212008','10008','159','2021159/100/1'),
    ('212009','10009','160','2020160/100/1'),
    ('212010','10010','160','2019160/100/1');
    
	INSERT INTO TEAM10_NOK VALUES
	('DSA08469','Rhea Goswamy','Church Street Bengaluru','7937643672','F','Single','AG2019152','AP20182','152'),
	('DSA08470','Jia Goswamy','365 MG Road Hyderabad','8938674316','F','Married','AG2021153','AP20204','153'),
	('DSC08539','Aditya Girish','Sadashivnagar Delhi','8837345652','M','Married','AG20211551','AP20176','155'),
	('DSD08574','Aryan Hegde','Temple Road Hyderabad','9937328855','M','Single','AG20211552','AP20187','155'),
	('DSB08483','Priya Dileep','Fruit Road Jammu','9827443362','NB','Married','AG20221561','AP20231','156'),
	('DSC08540','Isha Harish','Sadashivnagar Delhi','8973456212','F','Married','AG2018157','AP20232','157'),
    ('DSA06734','Bina Advani','561, Church Street, Hyderabad','7937643672','F','Single','AG20211581','AP20223', 158),
    ('DSA06735','Nayana Advani','561, Church Street, Hyderabad ','8942533272','F','Married','AG20211582','AP20224', 158),
    ('DSB06458','Sharan Kumar','Helm quarters street','9332415272','M','Married','AG2020159','AP20225', 159),
    ('DSB06459','Riaz Paran','Corner House Quarter','9737324152','M','Single','AG2021159','AP20226', 159),
    ('DSB06456','Chara Pian','MG Road Delhi','8863764642','F','Married','AG2020160','AP20227', 160),
    ('DSB06596','Pia Kalam','Gourd House, Delhi','9657319011','F','Single','AG2019160','AP20228', 160);

	INSERT INTO TEAM10_VEHICLE VALUES
	(557000, NULL, NULL, 'MH43GB8523', 2600000, 'Sedan', 2000, 4, 'Skoda', 872342392, 283236482, 1234, 'M12784CX112', '151'),
	(557001, '2019152/100/1', 'DSA08469', 'KA12BG9512', 1000000, 'Sedan', 1500, 4, 'Honda', 822648394, 385436882, 1745, 'M23285XH211', '152'),
	(557002, NULL, NULL, 'UP70AT8312', 3000000, 'SUV', 2000, 5, 'Jeep', 812445324, 395267484, 1400, 'M18385LK164', '153'),
	(557003, '2021153/100/2', 'DSA08470', 'KL04RG7365', 1200000, 'SUV', 1800, 5, 'Hyundai', 835475824, 376538387, 1655, 'M93745MH164', '153'),
	(557004, NULL, NULL, 'AP03TR7253', 2000000, 'SUV', 2500, 7, 'Toyota', 815465423, 372266327, 1150, 'M92835MH164', '154'),
	(557005, '2021155/100/1', 'DSC08539', 'TS34RG1873', 200000, 'Mini', 800, 4, 'Maruti', 825564417, 322533223, 1655, 'M38725TH183', '155'),
	(557006, '2021155/100/2', 'DSD08574', 'MH34AS3929', 350000, 'Mini', 800, 4, 'Suzuki', 815274535, 315366362, 1800, 'M18526TT937', '155'),
	(557007, '2022156/100/1', NULL, 'DL02ER2929', 2350000, 'Sedan', 1400, 5, 'Honda', 826177323, 353726173, 1350, 'M13846RE917', '156'),
    (557008, '2022156/100/2', NULL, 'AP12HS1234', 2250000, 'Sedan', 1500, 4, 'Honda', 132642372, 139103882, 1487, 'M18395HG216', '156'),
	(557009, '2018157/100/1', NULL, 'TL84BH8392', 1600000, 'Sedan', 1800, 5, 'Mahindra', 37632292, 223836432, 1322, 'M93748AJ134', '157'),
	(557010, '2020157/100/1', NULL, 'KS93KS2842', 1400000, 'Sedan', 1300, 4, 'Hyundai', 462326764, 213335461, 1922, 'M29043LO382', '157'),
    (557011, '2021158/100/1', 'DSA06734', 'KA02CG7502', 900000, 'Sedan', 1500, 4, 'Maruti', 923468754, 123441882, 2745, 'M5478XH211', '158'),
	(557012, '2021158/100/2', 'DSA06735', 'MH34HJ3401', 1200000, 'SUV', 3000, 7, 'Mahindra', 843535178, 312344582, 1950, 'M4378XH211', '158'),
	(557013, '2020159/100/1', 'DSB06458', 'BR04RG7365', 1100000, 'SUV', 2000, 5, 'Tata', 854669708, 351567882, 2150, 'M6590XH211', '159'),
	(557014, '2021159/100/1', 'DSB06459', 'AS11GF3872', 1900000, 'SUV', 1000, 5, 'Mahindra', 898765178, 374684582, 1160, 'M8075XH211', '159'),
	(557015, '2020160/100/1', 'DSB06456', 'LA03LM9183', 1700000, 'SUV', 4000, 7, 'Toyota', 123455178, 365478582, 1690, 'M7568XH211', '160'),
	(557016, '2019160/100/1', 'DSB06596', 'JK43NB7843', 2200000, 'SUV', 1300, 5, 'Kia', 987556178, 335780982, 1250, 'M2546XH211', '160');

	INSERT INTO TEAM10_INCIDENT VALUES
	('61411','Natural Disaster','2023-07-23','Vehicle engine in heavy flood'),
	('61412','Theft','2023-08-15','The bike parked near the mall went missing.'),
	('61413','Collision','2021-05-07',"Due to collision the car's hood came off"),
	('61414','Vehicle Fire','2020-10-04','Caught fire in the petrol pump.'),
	('61415','Collision','2024-08-28','The driver was caught driving with 5% alcohol in their body'),
	('61416','Theft','2023-09-11','Car got broken into, license plate tampered.'),
	('61417','Vehicle Fire','2020-11-18','Due to short circuit the truck caught fire.'),
	('61418','Natural Disaster','2023-09-20','Heavy lightning caused damage to the bike.'),
    ('61419','Collision','2022-11-05','Involved in an accident with another car'),
    ('61420','Theft','2023-11-17','Car was broken into and robbed'),
    ('61421','Natural Disaster','2024-01-11','Car was wrecked in a tornado'),
    ('61422','Collision','2020-05-11','Car collided with school bus'),
    ('61423','Vehicle Fire','2020-10-11','Car was burned in a riot'),
    ('61424','Theft','2022-03-06','Car stolen at gunpoint and wrecked');

	INSERT INTO TEAM10_INCIDENT_REPORT VALUES
	(1025,"Barrie Crawford",200000,"Vehicle engine in heavy flood",61411, 557001, 152),
	(1026,"Marie Synthie",100000,"Due to collision the cars hood came off",61413, 557003, 153),
	(1027,"John Micheal",8000000,"Caught fire in the petrol pump",61414, 557005, 155),
	(1028,"Pavan Kuman",1000000,"Due to short circuit the truck caught fire.",61417, 557006, 155),
	(1029,"Aakash Jha",500000,"Car got broken into, license plate tampered.",61416, 557007, 156),
    (1030,"Aryan Sharma",200000,"Involved in an accident with another car",61419, 557012, 158),
    (1031,"Karan Kumar",150000,"Car was broken into and robbed",61420, 557014, 159),
    (1032,"Shekhar Sunil",75000,"The driver was caught driving with 5% alcohol in their body",61415, 557015, 160),
    (1033,"Ravi Kumble",250000,"Car was wrecked in a tornado",61421, 557005, 155),
    (1034,"Pankaj Chopra",10000,"Car collided with school bus",61422, 557010, 157),
    (1035,"Mohammad Hasbulla",150000,"Car was burned in a riot",61423, 557013, 159),
    (1036,"Rohit Khetan",200000,"Car stolen at gunpoint and wrecked",61424, 557011, 158);

	INSERT INTO TEAM10_CLAIM VALUES
	(270001, 'AG2019152', 'AP20182', 1500000, 61411, 'Natural Disaster', '2023-07-28', 'GRANTED', '152'),
	(270002, 'AG2021153', 'AP20204', 1700000, 61413, 'Accident', '2021-05-15', 'GRANTED', '153'),
	(270003, 'AG20211551', 'AP20176', 1600000, 61414, 'Accident', '2020-10-10', 'GRANTED', '155'),
	(270004, 'AG20211552', 'AP20187', 1200000, 61417, 'Accident', '2020-11-25', 'GRANTED', '155'),
	(270005, 'AG20221562', 'AP20221', 1400000, 61416, 'Theft', '2023-09-14', 'PENDING', '156'),
    (270006, 'AG20211582', 'AP20224', 1000000, 61419, 'Accident', '2022-11-11', 'PENDING', '158'),
    (270007, 'AG2021159', 'AP20226', 1350000, 61420, 'Theft', '2023-11-17', 'PENDING', '159'),
    (270008, 'AG2020160', 'AP20227', 1650000, 61415, 'Accident', '2024-09-02', 'PENDING', '160'),
    (270009, 'AG20211551', 'AP20176', 1150000, 61421, 'Natural Disaster', '2024-01-15', 'PENDING', '155'),
    (270010, 'AG2020157', 'AP20222', 1500000, 61422, 'Accident', '2020-05-13', 'GRANTED', '157'),
    (270011, 'AG2020159', 'AP20225', 1450000, 61423, 'Fire', '2020-10-11', 'GRANTED', '159'),
    (270012, 'AG20211581', 'AP20223', 1550000, 61424, 'Theft', '2022-03-10', 'GRANTED', '158');
	 
	INSERT INTO TEAM10_CLAIM_SETTLEMENT VALUES
	(375000, 557001, '2023-08-05', 1500000, 'CV20221', 270001, 152),
	(375001, 557003, '2021-05-20', 1700000, 'CV20186', 270002, 153),
	(375002, 557005, '2020-10-16', 1600000, 'CV20203', 270003, 155),
	(375003, 557006, '2020-12-02', 1200000, 'CV20227', 270004, 155),
    (375004, 557010, '2020-05-20', 1500000, 'CV20261', 270010, 157),
    (375005, 557013, '2020-10-21', 1450000, 'CV20264', 270011, 159),
    (375006, 557011, '2022-03-20', 1550000, 'CV20263', 270012, 158);

	INSERT INTO TEAM10_OFFICE VALUES
    ('Head Office','Riya Maduskar','9122469313','Mangalore','100000', 'LE102','SBI General Insurance'),
    ('Head Office','Aryan Singh','9155773590','Mumbai','90000','LE101','Bajaj Allianz Limited'),
	('South Office','Rishit Tyagi','9846372947','Bengaluru','75000','LE101','Bajaj Allianz Limited'),
	('East Office','Rajat Raj','9745332225','Hyderabad','85000','RI101','Bajaj Allianz Limited'),
	('North Office','Dhruv V','88343725647','Jabalpur','62000','CL101','Bajaj Allianz Limited'),
	('North Office','Vipul Bharadwaj','7646262949','Hubli','72000','LE102','SBI General Insurance'),
	('South Office','Dileep Singh','9837872949','Mumbai','49000','RE101','Bajaj Allianz Limited'),
	('West Office','Rahul Kumar','9846302446','Kolkata','81000','AU101','Bajaj Allianz Limited'),
	('East Office','Shanaya Tyagi','8746872956','Delhi','90000','AC101','Bajaj Allianz Limited'),
	('South Office','Rohan Vivek','7826737292','Dehradun','39000','RE102','SBI General Insurance'),
    ('South Office','Pankaj Chopra','9221759302','Chennai','40000','LE103','PNB MetVehicle Ltd'),
    ('North Office','Merin John','9802271604','Delhi','45000','LE103','PNB MetVehicle Ltd'),
    ('Head Office','Neha Saini','9125729464','Mumbai','50000','CL103','PNB MetVehicle Ltd'),
    ('North Office','Karuna Mehta','9726371822','Chandigarh','42000','CL103','PNB MetVehicle Ltd'),
    ('West Office','Carmen Lupen','9928921275','Patna','46000','AC106','Isha vehicle Insurance'),
    ('North Office','Ahmed Hadi','9702831943','Agra','55000','AC106','Isha vehicle Insurance');

	INSERT INTO TEAM10_STAFF VALUES 
	('20134', 'Riya', 'Maduskar', ' 102- Fortune apartment, Hathill, Mangalore, 575004', '9567484839', 'M', 'Single', 'Indian', 'B.Com', '17000', '3453268AG', 'SBI General Insurance'),
	('20135', 'Rahul', 'Dixit', ' 111- Rose Cote apartments, Churchstreet, Mumbai, 560104', '9738493030', 'M', 'Married', 'Indian', 'M.Com', '18000', '5467845WD', 'Bajaj Allianz Limited'),
	('20136', 'Rose', 'Bastian', ' 205- Red apartments, Churchill, Ahmedabad, 675003', '9566540839', 'F', 'Married', 'Indian', 'M.Com', '20000', '8796058GF', 'SBI General Insurance'),
	('20139', 'Aryan', 'Shaaz', ' 304- Aria apartments, Hathill, Pune, 875004', '8657893879', 'M', 'Single', 'Indian', 'B.Com', '16000', '6758356KJ', 'SBI General Insurance'),
    ('20140', 'Neha', 'Saini', ' 2nd -floor, Vinayak Complex, Subhanpura, Mangalore, 575004', '9632587410', 'F', 'Single', 'Indian', 'B.Com', '17000', '2156768QW', 'SBI General Insurance'),
	('20142', 'Karuna', 'Mehta', '13b, 229, Bhakhtawar Bldg, Nariman Point , Mumbai, 560104', '8523697410', 'M', 'Single', 'Indian', 'M.Com', '17000', '7878845KL', 'Bajaj Allianz Limited'),
	('20143', 'Rishab', 'tyagi', ' 20a, 333, mukhtawar borandi road, Ahmedabad, 675889', '9632147851', 'F', 'Married', 'Indian', 'M.Com', '21000', '8778058GH', 'Isha vehicle Insurance'),
	('20145', 'Raj', 'Mohan', ' H.no No 10, 2, Timber Bazar, Nimkar Marg, Pune, 789004', '7412589633', 'M', 'Married', 'Indian', 'B.Com', '16000', '6258356WR', 'SBI General Insurance'),
	('20147', 'Neha', 'Saini', ' 111- hello apartment, Hathill, Mangalore, 785239', '7894561230', 'F', 'Married', 'Indian', 'B.Com', '16000', '3455268AG', 'PNB MetVehicle Ltd'),
	('20148', 'Rahul', 'Mehta', ' 111- Rota Cota apartments, Kilimanjao, Mumbai, 560104', '8963254170', 'M', 'Single', 'Indian', 'M.Com', '16000', '5463245WE', 'Bajaj Allianz Limited'),
	('20149', 'Harshdeep', 'Singh', '205- White Hills, Ramaney road, Ahmedabad, 896520', '7894561320', 'M', 'Married', 'Indian', 'M.Com', '21000', '8756058OP', 'PNB MetVehicle Ltd');

	INSERT INTO TEAM10_VEHICLE_SERVICE VALUES
	('Ford Motors','Dehradun','9834627184','Rahul Dravid','Bike','RI101','Bajaj Allianz Limited'),
	('Hyundai Motors','Jabalpur','7533621183','Yuvraj Singh','Car','LE101','Bajaj Allianz Limited'),
	('Maruti Suzuki','Patna','8834623284','Sachin Tendulkar','Truck','CL101','Bajaj Allianz Limited'),
	('LaMazda','Lucknow','8734639184','Harbhajan Singh','Car','CL102','SBI General Insurance'),
	('Ford Motors','Dharwad','7834627285','Lohith Verma','Car','LE102','SBI General Insurance'),
	('Hyundai Motors','Chennai','8834622187','Sparsh Jain','Bus','RE101','Bajaj Allianz Limited'),
	('Maruti Suzuki','Pune','7374624581','Abhimanyu Rathore','Bike','AU101','Bajaj Allianz Limited'),
	('LaMazda','Mumbai','7634278184','Tapan Singh','Bike','AC101','Bajaj Allianz Limited'),
	('Hyundai Motors','Delhi','8934477180','Utpreet Kaur','Scooter','RE102','SBI General Insurance'),
	('Ford Motors','Bengaluru','8734793027','Subhashini Surya','Car','AC102','SBI General Insurance');
END; 
$$

CALL InsertAllValues();