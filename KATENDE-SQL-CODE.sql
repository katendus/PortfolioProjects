--Exercise 1:

--Select the first 3,000 rows from the Person.Person table. 
--Display only the Title, LastName, and FirstName columns, in that order.


SELECT TOP (3000)
	   [Title]
      ,[LastName]
      ,[FirstName]
  FROM [Person].[Person]



--Exercise 2:

--Select the first 500 rows from the Sales.SalesOrderHeader table.
--Display only the OrderDate, DueDate, ShipDate, and TotalDue columns, in that order.


SELECT TOP (500)
       [OrderDate]
      ,[DueDate]
      ,[ShipDate]
      ,[TotalDue]
  FROM [Sales].[SalesOrderHeader]



--Exercise 3:

--Select the first 100 rows from the Sales.SalesPerson table.
--Display only the SalesLastYear and SalesYTD columns, in that order.


SELECT TOP (100)
       [SalesLastYear]
      ,[SalesYTD]
  FROM [Sales].[SalesPerson]
  
  
/******************************************************************************************************************/
  

--Aliasing a column name in SQL


SELECT 
       [Organization Level] = [OrganizationLevel]
      ,[JobTitle]
      ,[HireDate]
      ,[VacationHours]
	  
FROM [HumanResources].[Employee]


--Exercise 1:
/*
Modify the query in the “Aliasing Columns – Example Code.sql” file 
such that all column names in the query output have spaces between the words.
*/

SELECT 
       [Organization Level] = [OrganizationLevel]
      ,[Job Title] = [JobTitle]
      ,[Hire Date] = [HireDate]
      ,[Vacation Hours] = [VacationHours]
	  
FROM [HumanResources].[Employee]


--Exercise 2:
/*
Write a query that outputs the “Name” and “ListPrice” fields from the “Production.Product” table. 
These column names in the query output should read “Product Name” and “List Price $$”, respectively.
*/

SELECT 
       [Product Name] = [Name]
      ,[List Price $$] = [ListPrice]

FROM [Production].[Product]


--Exercise 3:
/*
Write a query that outputs the “PurchaseOrderID”, “OrderQty”, and “LineTotal” fields 
from the “Purchasing.PurchaseOrderDetail” table. 
“PurchaseOrderID” should be renamed to “OrderID”, and “OrderQty” to “OrderQuantity”. 
“LineTotal” can remain unchanged.
*/

SELECT 
       [OrderID] = [PurchaseOrderID]
      ,[OrderQuantity] = [OrderQty]
      ,[LineTotal]
FROM [Purchasing].[PurchaseOrderDetail]


/******************************************************************************************************************/


/*Selecting a literal value*/

SELECT [Name] = 'Stephen Katende'

/*Selecting custom values*/
SELECT TOP (10) 
	   [Query Author] = 'Stephen Katende'
	  ,[Query Number] = 10
      ,[BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [HumanResources].[Employee]


--Exercise 1
/*
Write a query that selects your first name and age.
Name the columns “First Name”, and “Age”, respectively.
*/

SELECT 
[Name] = 'Stephen Katende',
[Age] = 29 --Age shown may not actually be real age :-)


--Exercise 2:
/*
Write a query that outputs:
•	All columns from the Sales.SalesOrderHeader table EXCEPT “rowguid” and “ModifiedDate”.
•	A column called “Query Run By” that outputs your first name. 
    This should be the first column in the query output.
The query should only output the top 5000 rows from the table.
*/

SELECT TOP (5000)
       [Query Run By] = 'Stephen Katende'
      ,[SalesOrderID]
      ,[RevisionNumber]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
      ,[Status]
      ,[OnlineOrderFlag]
      ,[SalesOrderNumber]
      ,[PurchaseOrderNumber]
      ,[AccountNumber]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[TerritoryID]
      ,[BillToAddressID]
      ,[ShipToAddressID]
      ,[ShipMethodID]
      ,[CreditCardID]
      ,[CreditCardApprovalCode]
      ,[CurrencyRateID]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[Comment]
FROM [Sales].[SalesOrderHeader]


/******************************************************************************************************************/


--Exercise 1:
--Select all columns AND rows from the “Sales.Customer” table.

SELECT
*
FROM [Sales].[Customer]



--Exercise 2:
--Select all columns and the top 100 rows from the “Production.Product” table.

SELECT TOP (1000) 
*
FROM [Production].[Product]


/******************************************************************************************************************/


/*Applying criteria to a text field*/

SELECT 
	   [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
FROM [HumanResources].[Employee]

WHERE [JobTitle] = 'Research and Development Manager'


--TYPES OF COMMENTS, SINGLE LINE COMMENT WITH TWO -- OR MULTIPLE LINE COMMENT WITH /**/
--WHERE [MaritalStatus] = 'M'
/*
WHERE [MaritalStatus] = 'M'
*/


/*Applying criteria to a numeric field*/

SELECT 
	   [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
FROM [HumanResources].[Employee]

WHERE [SalariedFlag] = 0


/******************************************************************************************************************/


--Exercise 1:
/*
Select any rows from the “Person.Person” table where the value in the “FirstName” column is “Pilar”.
Include all columns EXCEPT “BusinessEntityID”, “rowguid”, AND “ModifiedDate” in your output.
*/


SELECT 
       [PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]

FROM [Person].[Person]

WHERE [FirstName] = 'Pilar'


--Exercise 2:
/*
Select any rows from the “Purchasing.Vendor” table 
where the value in the “Name” column is “Northwind Traders”. 
Include all columns EXCEPT “BusinessEntityID” and “ModifiedDate” in your output.
*/


SELECT
       [AccountNumber]
      ,[Name]
      ,[CreditRating]
      ,[PreferredVendorStatus]
      ,[ActiveFlag]
      ,[PurchasingWebServiceURL]

FROM [Purchasing].[Vendor]

WHERE [Name] = 'Northwind Traders'


--Exercise 3:
/*
Modify your query from Exercise 2 by commenting out the WHERE statement,
and then adding a new criterion that filters for preferred vendors only – 
that is to say, where the value in the “PreferredVendorStatus” column is 1.
*/


SELECT
       [AccountNumber]
      ,[Name]
      ,[CreditRating]
      ,[PreferredVendorStatus]
      ,[ActiveFlag]
      ,[PurchasingWebServiceURL]

FROM [Purchasing].[Vendor]

--WHERE [Name] = 'Northwind Traders'
WHERE [PreferredVendorStatus] = 1


/******************************************************************************************************************/


/*Inequality example NOT EQUAL TO*/ 

SELECT [BusinessEntityID]
      ,[TerritoryID]
      ,[SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
      ,[SalesYTD]
      ,[SalesLastYear]
      ,[rowguid]
      ,[ModifiedDate]
	  
FROM  [Sales].[SalesPerson]

WHERE [SalesQuota] != 250000



/*Using IS NULL*/

SELECT [BusinessEntityID]
      ,[TerritoryID]
      ,[SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
      ,[SalesYTD]
      ,[SalesLastYear]
      ,[rowguid]
      ,[ModifiedDate]
	  
FROM  [Sales].[SalesPerson]

WHERE [SalesQuota] IS NULL


/*Using IS NOT NULL*/

SELECT [BusinessEntityID]
      ,[TerritoryID]
      ,[SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
      ,[SalesYTD]
      ,[SalesLastYear]
      ,[rowguid]
      ,[ModifiedDate]
	  
FROM  [Sales].[SalesPerson]

WHERE [SalesQuota] IS NOT NULL




/*Combining inequalities and NULLs*/

SELECT [BusinessEntityID]
      ,[TerritoryID]
      ,[SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
      ,[SalesYTD]
      ,[SalesLastYear]
      ,[rowguid]
      ,[ModifiedDate]
	  
FROM  [Sales].[SalesPerson]

WHERE [SalesQuota] != 250000 OR [SalesQuota] IS NULL


/******************************************************************************************************************/


/*Example with AND*/

SELECT [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [HumanResources].[Employee]

  WHERE [JobTitle] = 'Sales Representative'
  AND [MaritalStatus] = 'S'

/*Example with OR*/


  SELECT
       [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [HumanResources].[Employee]

  WHERE [JobTitle] = 'Sales Representative'
  OR [MaritalStatus] = 'S'

/*Example with IN*/


  SELECT
       [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [HumanResources].[Employee]

  WHERE [JobTitle] IN('Senior Tool Designer', 'Research and Development Engineer', 'Senior Design Engineer')


/*
Exercise 1:

Select all people from the “Person.Person” table with a first name of “Laura” 
and a last name of “Norman”. Include only the following columns in your output:

•	PersonType
•	Title
•	FirstName
•	LastName

*/

SELECT 
       [PersonType]
      ,[Title]
      ,[FirstName]
      ,[LastName]

FROM [Person].[Person]

WHERE [FirstName] = 'Laura'
	AND [LastName] = 'Norman'


/*
Exercise 2:

Modify your query from Exercise 1 as follows:

Change your criteria to only look for records where the person type is either “SP” OR “EM”.
*/

SELECT 
       [PersonType]
      ,[Title]
      ,[FirstName]
      ,[LastName]

FROM [Person].[Person]

WHERE [PersonType] = 'SP'
	OR [PersonType] = 'EM'
	OR [PersonType] = 'VC'


/*
Exercise 3:

Streamline your WHERE statement from Exercise 2 by utilizing the IN keyword.
*/

SELECT 
       [PersonType]
      ,[Title]
      ,[FirstName]
      ,[LastName]

FROM [Person].[Person]

WHERE [PersonType] IN('SP', 'EM', 'VC')


/******************************************************************************************************************/


 /*
What we want:

 OrganizationLevel = 4,
 AND 
 SalariedFlag = 1 OR JobTitle = 'Senior Tool Designer'
*/

/*
What SQL hears if we don't use parentheses:

 OrganizationLevel = 4 AND SalariedFlag = 1,
 OR 
 JobTitle = 'Senior Tool Designer'
*/

SELECT TOP (1000) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [HumanResources].[Employee]

  WHERE [OrganizationLevel] = 4
  AND SalariedFlag = 1
  OR JobTitle = 'Senior Tool Designer'


 /*
What SQL hears WITH parentheses:

 OrganizationLevel = 4, AND SalariedFlag = 1 OR JobTitle = 'Senior Tool Designer'
*/


SELECT TOP (1000) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [HumanResources].[Employee]

  WHERE [OrganizationLevel] = 4
  AND (SalariedFlag = 1
  OR JobTitle = 'Senior Tool Designer')


/*
Exercise 1:

Select all rows from the "HumanResources.Employee" table where gender = "F", 
AND the job title is either "Network Manager" or "Application Specialist". 
Select all columns using the "SELECT *" shortcut.
*/

SELECT
*

FROM [HumanResources].[Employee]

WHERE [Gender] = 'F'
	AND ([JobTitle] = 'Network Manager' OR [JobTitle] = 'Application Specialist')


/*
Exercise 2:

Streamline your query from Exercise 1 by using an IN statement to replace the OR. 
Try running the modified query without parentheses to see if it still works.
*/

SELECT
*

FROM [HumanResources].[Employee]

WHERE [Gender] = 'F'
	AND [JobTitle] IN('Network Manager','Application Specialist')


/*
Exercise 3:

Select all rows from the "Person.Person" table where person type = "EM", 
AND there is a NULL value in either the "Title" or "MiddleName" fields. 
Include the following fields in your query:

 - PersonType (aliased as "Person Type")

 - Title

 - FirstName (aliased as "First Name")

 - MiddleName (aliased as "Middle Name")

 - LastName (aliased as "Last Name")

 - Suffix
*/

SELECT
       [Person Type] = [PersonType]
      ,[Title]
      ,[First Name] = [FirstName]
      ,[Middle Name] = [MiddleName]
      ,[Last Name] = [LastName]
      ,[Suffix]

FROM [Person].[Person]

WHERE [PersonType] = 'EM'
	AND ([Title] IS NULL OR [MiddleName] IS NULL)

/*
BONUS:

Modify your query from Exercise 3 such that you are now selecting all rows 
where person type is either "EM" or "SP" AND there is a NULL value 
in either the "Title", "MiddleName", or "Suffix" fields.
*/

SELECT
       [Person Type] = [PersonType]
      ,[Title]
      ,[First Name] = [FirstName]
      ,[Middle Name] = [MiddleName]
      ,[Last Name] = [LastName]
      ,[Suffix]

FROM [Person].[Person]

WHERE [PersonType] IN('EM','SP')
	AND ([Title] IS NULL OR [MiddleName] IS NULL OR [Suffix] IS NULL)


/******************************************************************************************************************/


/*Open-ended inequalities with >, <, >=, and <=*/

SELECT TOP (1000) [BusinessEntityID]
      ,[TerritoryID]
      ,[SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
      ,[SalesYTD]
      ,[SalesLastYear]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [Sales].[SalesPerson]

  WHERE [SalesQuota] < 250000
  --WHERE [SalesQuota] > 250000
  --WHERE [SalesQuota] <= 250000
  --WHERE [SalesQuota] >= 250000



/*Specific ranges with inequality operators and the AND keyword*/

SELECT TOP (1000) [SalesOrderID]
      ,[RevisionNumber]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
      ,[Status]
      ,[OnlineOrderFlag]
      ,[SalesOrderNumber]
      ,[PurchaseOrderNumber]
      ,[AccountNumber]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[TerritoryID]
      ,[BillToAddressID]
      ,[ShipToAddressID]
      ,[ShipMethodID]
      ,[CreditCardID]
      ,[CreditCardApprovalCode]
      ,[CurrencyRateID]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[Comment]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [Sales].[SalesOrderHeader]

  WHERE [TotalDue] <= 30000
  AND [TotalDue] >= 20000



/*Specific ranges with the BETWEEN keyword*/

SELECT TOP (1000) [SalesOrderID]
      ,[RevisionNumber]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
      ,[Status]
      ,[OnlineOrderFlag]
      ,[SalesOrderNumber]
      ,[PurchaseOrderNumber]
      ,[AccountNumber]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[TerritoryID]
      ,[BillToAddressID]
      ,[ShipToAddressID]
      ,[ShipMethodID]
      ,[CreditCardID]
      ,[CreditCardApprovalCode]
      ,[CurrencyRateID]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[Comment]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [Sales].[SalesOrderHeader]

  WHERE [TotalDue] BETWEEN 20000 AND 30000


/*
Exercise 1:

Select all rows from the "Purchasing.PurchaseOrderHeader" table 
where the total due amount is greater than $50,000 and the freight amount is less than $1,000. 
Include the following columns in your output:

 - OrderDate
 - SubTotal
 - TaxAmt
 - Freight
 - TotalDue
*/

SELECT
       [OrderDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]

FROM [Purchasing].[PurchaseOrderHeader]

WHERE [TotalDue] > 50000
	AND [Freight] < 1000

/*
Exercise 2:

Using the BETWEEN keyword, modify your query from Exercise 1 such that 
you are now pulling in all rows where the subtotal amount is between $10,000 and $30,000.
*/

SELECT
       [OrderDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]

FROM [Purchasing].[PurchaseOrderHeader]

WHERE [SubTotal] BETWEEN 10000 AND 30000

/*
Exercise 3:

Modify your query from Exercise 2 such that you are NOT including $10,000 and $30,000 
in your range of subtotals, but still including all amounts between these numbers. 
In other words, the range should no longer be "inclusive".
*/

SELECT
       [OrderDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]

FROM [Purchasing].[PurchaseOrderHeader]

WHERE [SubTotal] > 10000 
	AND [SubTotal] < 30000


/******************************************************************************************************************/


/*Using the % wildcard*/

SELECT [BusinessEntityID]
      ,[PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [Person].[Person]

  WHERE [FirstName] LIKE 'Tom%'
  AND [LastName] LIKE 'B%'


/*Pattern matching with brackets*/

SELECT [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [HumanResources].[Employee]

  WHERE [JobTitle] LIKE '%[0-9]%'


/*Using NOT LIKE with brackets*/

SELECT [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [HumanResources].[Employee]

  WHERE [JobTitle] NOT LIKE '%[0-9]%'
  
  
/*
Exercise 1:

Select all rows from the Person.Person table where 
the first name is abbreviated with a period/dot at the end - for example, "A.".

Select all columns via the "SELECT *" shortcut.
*/

SELECT
*
  
FROM [Person].[Person]

WHERE [FirstName] LIKE '%.'


/*
Exercise 2:

Select all people from the Person.Person table with the initials "TLC". 
HINT - you'll have to apply criteria to the FirstName, MiddleName, AND LastName columns. 

You may select all columns via the "SELECT *" shortcut.
*/

SELECT
*
  
FROM [Person].[Person]

WHERE [FirstName] LIKE 'T%'
	AND [MiddleName] LIKE 'L%'
	AND [LastName] LIKE 'C%'


/*
Exercise 3:

Select all rows from the Person.Person table where the first name 
does NOT include a vowel (a, e, i, o, or u). 
HINT - you do NOT need to use OR to accomplish this; try using a wildcard with brackets ([ ]) instead.

You may select all columns via the "SELECT *" shortcut.
*/

SELECT
*
  
FROM [Person].[Person]

WHERE [FirstName] NOT LIKE '%[aeiou]%'  


/******************************************************************************************************************/


/*ORDER BY DESC*/
SELECT [SalesOrderID]
      ,[OrderDate]
      ,[TotalDue]

  FROM [Sales].[SalesOrderHeader]

  WHERE [TotalDue] > 10000

  ORDER BY [TotalDue] DESC


  /*ORDER BY ASC*/
SELECT [SalesOrderID]
      ,[OrderDate]
      ,[TotalDue]

  FROM [Sales].[SalesOrderHeader]

  WHERE [TotalDue] > 10000

  ORDER BY [TotalDue] ASC --Alternately, just use ORDER BY [TotalDue] here


/*ORDER BY referencing column alias*/
SELECT [SalesOrderID]
      ,[OrderDate]
      ,[Total Amount Due] = [TotalDue]

  FROM [Sales].[SalesOrderHeader]

  WHERE [TotalDue] > 10000

  ORDER BY [Total Amount Due] DESC


/*ORDER BY referencing column position*/
SELECT [SalesOrderID]
      ,[OrderDate]
      ,[Total Amount Due] = [TotalDue]

  FROM [Sales].[SalesOrderHeader]

  WHERE [TotalDue] > 10000

  ORDER BY 3 DESC



/*ORDER BY First Name ONLY*/

SELECT [BusinessEntityID]
      ,[PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [Person].[Person]

  ORDER BY [FirstName]



/*ORDER BY First Name and Last Name*/

SELECT [BusinessEntityID]
      ,[PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [Person].[Person]

  ORDER BY [FirstName], [LastName]
  
  
/*
Exercise 1:

Select all rows and the following columns from the HumanResources.Employee table:

 - OrganizationLevel (alias as "Organization Level")
 - JobTitle (alias as "Job Title")
 - VacationHours (alias as "Vacation Hours")
 - SickLeaveHours (alias as "Sick Leave Hours")

Sort your output first by OrganizationLevel in ascending order, 
then VacationHours in descending order.
*/

SELECT
       [Organization Level] = [OrganizationLevel]
      ,[Job Title] = [JobTitle]
      ,[Vacation Hours] = [VacationHours]
      ,[Sick Leave Hours] = [SickLeaveHours]

FROM [HumanResources].[Employee]

ORDER BY [OrganizationLevel], [VacationHours] DESC


/*
Exercise 2:

Modify your query from Exercise 1 to use your column aliases, 
rather than the actual column names in the database table, in the ORDER BY.
*/

SELECT
       [Organization Level] = [OrganizationLevel]
      ,[Job Title] = [JobTitle]
      ,[Vacation Hours] = [VacationHours]
      ,[Sick Leave Hours] = [SickLeaveHours]

FROM [HumanResources].[Employee]

ORDER BY [Organization Level], [Vacation Hours] DESC


/*
Exercise 3:

Modify your query from Exercise to use the position of the columns in the query output 
(for example, 1 for the first column) in the ORDER BY as opposed to the column aliases.
*/

SELECT
       [Organization Level] = [OrganizationLevel]
      ,[Job Title] = [JobTitle]
      ,[Vacation Hours] = [VacationHours]
      ,[Sick Leave Hours] = [SickLeaveHours]

FROM [HumanResources].[Employee]

ORDER BY 1, 3 DESC  


/******************************************************************************************************************/


/*Selecting duplicate values from a column without SELECT DISTINCT*/

  SELECT 
       [JobTitle]

  FROM [HumanResources].[Employee]


/*Selecting duplicate values from a column without SELECT DISTINCT, sorted*/

  SELECT 
       [JobTitle]

  FROM [HumanResources].[Employee]

  ORDER BY 1


/*Selecting unique column values with SELECT DISTINCT*/


  SELECT DISTINCT
       [JobTitle]

  FROM [HumanResources].[Employee]

  ORDER BY 1


/*Using SELECT DISTINCT across multiple columns*/


  SELECT DISTINCT
       [FirstName]
      ,[LastName]
  FROM [Person].[Person]

  ORDER BY 2,1
  --ORDER BY 2,1


/*
Exercise 1:

Produce a list of the unique person types in the "Person.Person" table, sorted in ascending order.
*/
SELECT DISTINCT
      [PersonType]

FROM [Person].[Person]

ORDER BY 1

/*
Exercise 2:

Produce a list of the unique full names in the "Person.Person" table - 
including first name, middle name, and last name. 
Only include names that have a value for middle name.

The output should be sorted by last name and then by first name, in ascending order.
*/

SELECT DISTINCT
       [FirstName]
	  ,[MiddleName]
	  ,[LastName]

FROM [Person].[Person]

WHERE [MiddleName] IS NOT NULL

ORDER BY 3, 1


/******************************************************************************************************************/


/*String concatenation: first and last name*/

SELECT 
       [FirstName]
      ,[LastName]
      ,[Full Name] = [FirstName] + ' ' + [LastName]
	  
FROM [Person].[Person]


/*Multiplication - Commission YTD*/

SELECT 
	  [CommissionPct],
	  [SalesYTD],
	   [CommissionYTD] = [CommissionPct] * [SalesYTD]

  FROM [Sales].[SalesPerson]


/*Subtraction - Income YTD*/

SELECT 
	  [CommissionPct],
	  [SalesYTD],
	  [Bonus],
	  [CommissionYTD] = [CommissionPct] * [SalesYTD],
	  [IncomeYTD] = ([CommissionPct] * [SalesYTD]) + [Bonus]

  FROM [Sales].[SalesPerson]


/*Subtraction - Sales Delta Year Over Year*/

SELECT 
       [SalesYTD]
      ,[SalesLastYear]
	  ,[Difference] = [SalesLastYear] - [SalesYTD]


  FROM [Sales].[SalesPerson]


/*Division - Bonus Fairness*/

SELECT 
       [SalesYTD]
      ,[Bonus]
	  ,[Bonus %] = ([Bonus] / [SalesYTD]) * 100


  FROM [Sales].[SalesPerson]

  ORDER BY 3


/*Division - Handling Whole Numbers*/

SELECT 
       [SafetyStockLevel]
      ,[ReorderPoint]
      ,[ReorderPoint % SafetyStockLevel] = [ReorderPoint] / [SafetyStockLevel]
      ,[ReorderPoint % SafetyStockLevel FIXED] = [ReorderPoint] / ([SafetyStockLevel] * 1.0)

  FROM [Production].[Product]



/*
Exercise 1:

Select a derived column from the "Person.Person" table - aliased as "Person Title" - 
that consists of the person's first name, followed by a space, followed by their last name, 
followed by a hyphen (-), followed by the person type.
*/

SELECT
      [Person Title] = [FirstName] + ' ' + [LastName] + '-' + [PersonType]


FROM [Person].[Person]


/*
Exercise 2:

Select all rows from the "HumanResources.Employee" table where "SalariedFlag" = 0. 
Include the following columns in your output:

 - BusinessEntityID
 - VacationHours
 - SickLeaveHours
 - Total Time Off - This is a derived column you will calculate by adding vacation hours and sick leave hours
*/

SELECT [BusinessEntityID]
      ,[VacationHours]
      ,[SickLeaveHours]
	  ,[Total Time Off] = [VacationHours] + [SickLeaveHours]

FROM [HumanResources].[Employee]

WHERE [SalariedFlag] = 0

ORDER BY [Total Time Off]


/*
Exercise 3:

Select all rows from the "HumanResources.EmployeePayHistory" table where "SalariedFlag" = 0. 
Include the following columns in your output:

 - BusinessEntityID
 - Rate
 - Weekly Pay - This is a derived column you will calculate using the employee pay rate from the "Rate" column, and assuming a 40 hour work week.
*/

SELECT [BusinessEntityID]
      ,[Rate]
      ,[PayFrequency]
	  ,[Amount Per Paycheck] = ([Rate] * 40) * [PayFrequency]

FROM [HumanResources].[EmployeePayHistory]

ORDER BY [Amount Per Paycheck] DESC


/*
Bonus:

Modify your query from Exercise 2 by adding a new derived column called "Total Days Off". 
This column should build on our math for "Total Time Off" by factoring in an assumed 8 hour workday. 
HINT - remember how to keep SQL from performing "integer division" by dividing by a decimal!
*/

SELECT [BusinessEntityID]
      ,[VacationHours]
      ,[SickLeaveHours]
	  ,[Total Time Off] = [VacationHours] + [SickLeaveHours]
	  ,[Total Days Off] = ([VacationHours] + [SickLeaveHours]) / 8.0

FROM [HumanResources].[Employee]

WHERE [SalariedFlag] = 0

ORDER BY [Total Time Off]


/******************************************************************************************************************/


/*LEFT Function*/

SELECT
	  [PhoneNumber],
      [Area Code] = LEFT([PhoneNumber], 3)
FROM [Person].[PersonPhone]

WHERE [PhoneNumber] NOT LIKE '%(%'


/*RIGHT Function*/

SELECT 
      [AccountNumber],
      [Last 6] = RIGHT([AccountNumber], 6)

  FROM [Sales].[SalesOrderHeader]


/*LEN Function*/

SELECT
	  [PhoneNumber],
	  [Phone Number Length] = LEN([PhoneNumber])

 FROM [Person].[PersonPhone]

WHERE LEN([PhoneNumber]) <= 12

/*Changing Email Domains With REPLACE*/

SELECT 
      [EmailAddress],
	  [Modified Email Address] = REPLACE([EmailAddress], 'adventure-works', 'hotmail')

FROM [Person].[EmailAddress]



/*
Exercise 1:

Select the following columns (all rows) from the "Sales.CreditCard" table:

 - CardNumber
 - Last Four Digits - a derived column with just the last four digits of the credit card number
*/

SELECT 
        [CardNumber]
	   ,[Last Four Digits] = RIGHT([CardNumber], 4)

FROM [Sales].[CreditCard]


/*
Exercise 2:

Select the following columns (all rows) from the "Production.ProductReview" table:

 - ReviewerName
 - Comments
 - Cleaned Comments - a derived column in which all commas from the "Comments" field have been replaced with empty strings
*/

SELECT 
       [ReviewerName]
      ,[Comments]
      ,[Cleaned Comments] = REPLACE([Comments], ',','')

FROM [Production].[ProductReview]


/*
Exercise 3:

Select the "FirstName" and "LastName" columns from the "Person.Person" table. 
Only include rows where the length of the last name is greater than or equal to 10 characters.
*/

SELECT 
		[FirstName]
       ,[LastName]

FROM [Person].[Person]

WHERE LEN([LastName]) >= 10


/*
Bonus:

Sort the output of Exercise 3 by the length of the last name in descending order. 
HINT - you can re-use the expression in your WHERE clause in your ORDER BY, even though it isn't included in the SELECT list!
*/

SELECT 
		[FirstName]
       ,[LastName]

FROM [Person].[Person]

WHERE LEN([LastName]) >= 10

ORDER BY LEN([LastName]) DESC


/******************************************************************************************************************/









































































































































































































































































































































































































































































































































































































































































































































































































































































































































































