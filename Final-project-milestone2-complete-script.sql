/*CREATE DATABASE VariousAccessories;
GO
USE VariousAccessories;
CREATE TABLE Inventory(
	AccessoryID int NOT NULL,
	Description varchar(200) NOT NULL,
	Type varchar(50) NOT NULL,
	Color varchar(50),
	Size varchar(50),
	ProductionCost money,
	PriceExtra money,
	PRIMARY KEY(AccessoryID)
);
GO
CREATE TABLE Customers(
	ID int NOT NULL,
	Name varchar(200) NOT NULL,
	Address varchar(200) NOT NULL,
	Zipcode varchar(10) NOT NULL,
	Email varchar(30),
	Cell varchar(15),
	PRIMARY KEY(ID)
);

GO
CREATE TABLE Zipcode(
	Zipcode varchar(10) NOT NULL,
	City varchar(30) NOT NULL,
	State varchar(2) NOT NULL,
	PRIMARY KEY(Zipcode)
);
GO
CREATE TABLE Locations(
	ID int NOT NULL,
	Name varchar(20) NOT NULL,
	PRIMARY KEY(ID)
);
GO
CREATE TABLE Orders(
	ID int NOT NULL,
	Date datetime,
	LocationID int NOT NULL,
	CustomerID int NOT NULL,
	PRIMARY KEY(ID)
);
GO
CREATE TABLE OrderDetails(
	ID int NOT NULL,
	OrderID int NOT NULL,
	InventoryNumber int NOT NULL,
	Quantity int,
	PRIMARY KEY(ID)
);
GO
USE VariousAccessories;
GO
ALTER TABLE Customers WITH CHECK
ADD CONSTRAINT FK_Zipcode FOREIGN KEY(Zipcode) REFERENCES Zipcode(Zipcode)
ON UPDATE CASCADE
GO
ALTER TABLE Orders WITH CHECK
ADD CONSTRAINT FK_LocationID FOREIGN KEY(LocationID) REFERENCES Locations(ID)
ON UPDATE CASCADE
GO
ALTER TABLE Orders WITH CHECK
ADD CONSTRAINT FK_CustomerID FOREIGN KEY(CustomerID) REFERENCES Customers(ID)
ON UPDATE CASCADE
GO
ALTER TABLE OrderDetails
ADD CONSTRAINT FK_OrderID FOREIGN KEY(OrderID) REFERENCES Orders(ID)
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE OrderDetails
ADD CONSTRAINT FK_InvNumber FOREIGN KEY(InventoryNumber) REFERENCES Inventory(AccessoryID)
ON UPDATE CASCADE
GO
USE VariousAccessories;
GO
CREATE INDEX idx_Zipcode ON Customers(Zipcode);
GO
CREATE INDEX idx_Location ON Orders(LocationID);
GO
CREATE INDEX idx_Customer ON Orders(CustomerID);
GO
CREATE INDEX idx_OrderID ON OrderDetails(OrderID);
GO
CREATE INDEX idx_invNumber ON OrderDetails(InventoryNumber);
*/