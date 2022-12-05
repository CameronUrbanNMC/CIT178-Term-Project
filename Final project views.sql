 /* Final Project Views */
 USE VariousAccessories
 GO
 /* The First View 
 -- this is the one you can update, the rest are just for viewing
 CREATE VIEW ItemPriceComparerers
 AS
 SELECT Description, ProductionCost, PriceExtra
 FROM Inventory;
 GO
 --The before
 SELECT * FROM ItemPriceComparerers;
 --Packers are winning, time to jack up prices
GO
UPDATE ItemPriceComparerers
SET PriceExtra = 20.00
WHERE Description = 'Cheese Hat';
GO
--Check
 SELECT * FROM ItemPriceComparerers;*/
/* The Second View 
--another!
GO
CREATE VIEW JustNamesAndTheID
AS
SELECT ID, [Name]
FROM Customers;
--look!
SELECT * FROM JustNamesAndTheID;*/
/* The Third View 
-- three
GO
CREATE VIEW HistoryOfLocations
AS
SELECT ID, [Name]
FROM Locations;
---it all starts at a store
SELECT * FROM HistoryOfLocations;*/
/* view four
---you know
GO
CREATE VIEW ManyIDS	
AS
SELECT ID, LocationID, CustomerID
FROM Orders;
--checks
SELECT * FROM ManyIDS;*/