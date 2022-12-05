USE VariousAccessories;
/*INSERT INTO Inventory VALUES(1,'Novelty Umbrella',	'Hat', 'Yellow','Big', 12.00, 19.20)
INSERT INTO Inventory VALUES(2,'Fancy Hat','Hat','Brown','Medium',15.00,24.00)
INSERT INTO Inventory VALUES(3,'General Neckwarmer','Scarf','Grey', 'Small', 3.00, 4.80)
INSERT INTO Inventory VALUES(4,'Shoulder-Sharpener','Brooch','Red','Small',16.50, 26.40)
INSERT INTO Inventory VALUES(5,'Hats for Necks','Scarf','Green','Medium',4.00, 6.40)
INSERT INTO Inventory VALUES(6,	'Shoulder-Dullener','Brooch','Black','Big',14.00,22.40)
INSERT INTO Inventory VALUES(7,	'Cheese Hat','Hat','Orange','Big',10.00,16.40)

INSERT INTO Locations VALUES(1,'Store')
INSERT INTO Locations VALUES(2,'Website')
INSERT INTO Locations VALUES(3,'Amazon')
INSERT INTO Locations VALUES(4,'Conventions')
INSERT INTO Locations VALUES(5,'Swap Meets')
INSERT INTO Locations VALUES(6,'Street Stops')
INSERT INTO Locations VALUES(7,'Airports') 



INSERT INTO Zipcode VALUES(43437,'Brooklyn','NY')
INSERT INTO Zipcode VALUES(25898,'Christmas','MI')
INSERT INTO Zipcode VALUES(39275,'Boston','MA')
INSERT INTO Zipcode VALUES(05178,'Orlando','FL')
INSERT INTO Zipcode VALUES(16776,'Boston','MA')
INSERT INTO Zipcode VALUES(84112,'Chicago','IL')
INSERT INTO Zipcode VALUES(91676,'Saginaw','MI')

INSERT INTO Customers VALUES(1,'Granny Devito','77 Abraham Ln',43437,'den@wash.com', '(295) 273-3388')
INSERT INTO Customers VALUES(2,'Joe Schmo','44 New Home Blvd',25898,'julia@jroberts.net', '(685) 398-3348')
INSERT INTO Customers VALUES(3,'Mister Soup', '25 Lick Ln',39275,'soup@soupcan.net','(715) 817-4280')
INSERT INTO Customers VALUES(4,'Amanda Huggenkiss','102 Lake Road',05178,'please@gmail.com','(922) 316-6607')
INSERT INTO Customers VALUES(5,'Lee Mediately','53 Old Haven',16776,'Lee@rightnow.org','(503) 567-4477')
INSERT INTO Customers VALUES(6,'Jimmy John','66 Eastern Plain', 84112,'feedback@jimmyjohns.com','(596) 996-3400')
INSERT INTO Customers VALUES(7,'Barry Blinefield', '999 Table Road',91676,'Sienfeld@not.net', '(706) 823-3325')
ALTER TABLE Orders
  DROP COLUMN OrderDate;
ALTER TABLE Orders
  ADD OrderDate datetime;
INSERT INTO Orders VALUES(1,1,1,'10/27/2022')
INSERT INTO Orders VALUES(2,1,2,'01/01/2022')
INSERT INTO Orders VALUES(3,2,3,'12/2/2022')
INSERT INTO Orders VALUES(4,5,4,'12/13/2022')
INSERT INTO Orders VALUES(5,4,5,'09/30/2022')
INSERT INTO Orders VALUES (6,6,6,'12/25/2022')
INSERT INTO Orders VALUES (7,7,7,'12/25/2022')

INSERT INTO OrderDetails VALUES(1,	1,	1,	5) 
INSERT INTO OrderDetails VALUES(2,	2,	6,	5)
INSERT INTO OrderDetails VALUES(3,	3,	3,	4)
INSERT INTO OrderDetails VALUES(4,	4,	4,	3)
INSERT INTO OrderDetails VALUES(5,	5,	2,	1)
INSERT INTO OrderDetails VALUES(6,	6,	2,	5)
INSERT INTO OrderDetails VALUES(7,	7,	4,	5)*/




