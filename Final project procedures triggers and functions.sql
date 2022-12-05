 /* Final Project Procedures 
 -- Will I keep using the orders table? yes 
USE VariousAccessories;
GO
CREATE PROC spOrders
AS
SELECT * FROM Orders
ORDER BY OrderDate;
GO

EXEC spOrders;
--asks for a month, shows nothing if no month
USE VariousAccessories;
GO
CREATE PROC spCertainOrders
	@Month int
AS
BEGIN
	SELECT * FROM Orders
	WHERE MONTH(OrderDate) = @Month;
END
GO
EXEC spCertainOrders 12
-- parameter thing
USE VariousAccessories;
GO
CREATE PROC spLocationFinder
	@ID int,
	@name nvarchar(50) OUTPUT
AS
SELECT @Name = [Name]
FROM Locations
WHERE ID = @ID;
GO
DECLARE @name nvarchar(50);
EXEC spLocationFinder 3, @name OUTPUT;
SELECT @name;
--return stuff
USE VariousAccessories;
GO
CREATE PROC spOrderCountByMonth
	@Month int
AS
DECLARE @OrderCount int;
SELECT @OrderCount = COUNT(*)
FROM Orders
WHERE @Month = MONTH(OrderDate)
RETURN @OrderCount;
GO

DECLARE @OrderCount int
EXEC @OrderCount = spOrderCountByMonth 12;
PRINT 'There are ' + CONVERT(varchar, @OrderCount) + ' orders in your selected month';
GO*/
 /* Final Project User Defined Functions 
USE VariousAccessories;
GO
CREATE FUNCTION fnGetID
    (@Name nvarchar(50) = '%')
    RETURNS int
BEGIN
    RETURN (SELECT ID FROM Locations WHERE [name] Like @Name);
END; 

-- boss forgot names, he needs help 
GO
SELECT ID, [name] FROM Locations 
WHERE ID = dbo.fnGetID('Ama%');
USE VariousAccessories;
GO
CREATE FUNCTION fnArbritraryCustomerThing 
	(@name nvarchar(50) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Customers WHERE [Name] LIKE @name);
GO
SELECT * FROM dbo.fnArbritraryCustomerThing('G%');*/
 /* Final Project Triggers */
  -- archive the location table
 USE VariousAccessories;
 GO
 SELECT * INTO LocationArchive
 FROM Locations
 WHERE 1=0;

 -- update LocationArchive table with status stuff 
 ALTER TABLE LocationArchive
 ADD [status] varchar(50);
 GO

 -- create insert trigger
 CREATE TRIGGER LocationArchive_insert ON Locations
    AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @ID int
	DECLARE @Name nvarchar(20)

    SELECT @ID =INSERTED.ID, @Name = INSERTED.[Name] FROM INSERTED

    INSERT INTO LocationArchive VALUES(@ID,@Name, 'It is in there' )
END
GO
-- insert into location
INSERT INTO Locations VALUES(8,'Metaverse (ugh, bad)');
GO
-- view data
SELECT * FROM LocationArchive;
GO
 -- delete trigger
 CREATE TRIGGER LocationArchive_Delete ON Locations
    AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @ID int
	DECLARE @Name nvarchar(20)

    SELECT @ID = DELETED.ID, @Name = DELETED.[Name] FROM DELETED

    INSERT INTO LocationArchive VALUES(@ID,@Name, 'It is gone' )
END
GO
-- get rid of the metaverse, I hate it 
DELETE FROM Locations WHERE ID = 8;
GO

-- view data
SELECT * FROM LocationArchive;

GO
 -- create update trigger
 CREATE TRIGGER LocationArchive_Update ON Locations
    AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @ID int
	DECLARE @Name nvarchar(20)

    SELECT @ID =INSERTED.ID, @Name = INSERTED.[Name]FROM INSERTED

	-- reinsert 
    INSERT INTO LocationArchive VALUES(@ID,@Name, 'what else is new' )
END
GO
-- test the insert and update trigger by making a row 
INSERT INTO Locations VALUES(10,'not the metaverse');
GO
UPDATE Locations 
SET [Name] = 'still not metaverse'
WHERE ID = 10;
GO
-- view data 
SELECT * FROM LocationArchive;
--It's really fussy with ID 9 for some reason. Thank god for the object explorer. 