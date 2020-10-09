--Q1: By Order Quantity, what were the five most popular products sold in 2014?

--Include these data points in the output:
--Order Date Year
--Product ID
--Product Name
--Product Number
--Product Color
--Sales Order Count
--Order Quantity
--Sales Order Line total
USE AdventureWorks2017
SELECT TOP 5 year(SOH.OrderDate) AS Orderdate, PP.ProductID, PP.ProductNumber, PP.Name, PP.Color, count(SOH.SalesOrderID)AS OrderID,
sum(SOD.OrderQty) AS Orderqty, sum(SOD.LineTotal) AS Linetotal
From Production.Product  AS PP
INNER JOIN Sales.SalesOrderDetail AS SOD ON PP.ProductID = SOD.ProductID
INNER JOIN Sales.SalesOrderHeader AS SOH ON sod.SalesOrderID = SOH.SalesOrderID
WHERE year(SOH.OrderDate) = 2014
GROUP BY year(SOH.OrderDate)
, PP.ProductID
, PP.ProductNumber
, PP.Name
, PP.Color

 

 

--Q2: How long are the 7 longest Person names and to whom do they belong? Rank by Full Name length, Last Name Length, First Name Length

--Include these data points in the output:
--Business Entity ID
--Full Name
--Full Name Length
--First Name
--First Name Length
--Middle Name
--Last Name
--Last Name Length


--Q3: Which Department pays its female workers on average the most per year?

--Include these fields:
--Department ID
--Department Name
--Gender
--Total Yearly Pay
--Business Entity ID Count
--Average Yearly Pay