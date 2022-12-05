USE VariousAccessories;
/*Average Price Per Item If You Were To Buy One Of Everything, Rounded to Two Decimal Places Because Fraction Change is for Salami Slicers
SELECT ROUND(AVG(PriceExtra),2) AS [Average Total Price]
FROM Inventory;
The Sum of all ordered items regardless of what they are, because we need a certain amount for tax writeoffs
SELECT SUM(Quantity) AS [Quantity Sum]
FROM OrderDetails;
The Most Expensive Item in Inventory to make, because budgeting doesn't trust anything unless a computer tells them it
SELECT MAX(ProductionCost) AS [How Expensive This Item Is. What's the item? Figure it out yourself, budget man.]
FROM Inventory; 
The Least Expensive Item in Inventory to make becuase why the heck not*/
SELECT MIN(ProductionCost) AS [Totally the most expensive item to make but jk it's actually the least]
FROM Inventory; 
