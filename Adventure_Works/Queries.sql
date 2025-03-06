use AdventureWorksDW2022;
SELECT @@SERVERNAME

--Views

CREATE VIEW DIM_DATE 
AS
	SELECT	DateKey
			,FullDateAlternateKey AS Full_Date
			,CalendarYear AS [Year]
			,CalendarQuarter AS [Quarter]
			,WeekNumberOfYear AS Week_No
			,DayNumberOfWeek AS Day_No_Of_Week
			,EnglishDayNameOfWeek AS Day_Name
	FROM DimDate

CREATE VIEW Dim_Category
AS
	Select	ProductCategoryKey AS Caetegory_Id
			,EnglishProductCategoryName AS Category_Name
	from DimProductCategory;


ALter VIEW Dim_Sub_Category
AS
	Select	ProductSubcategoryKey AS Sub_Caetegory_Id
			,EnglishProductSubcategoryName AS Sub_Category_Name
			,ProductCategoryKey AS Category_Id
	from DimProductSubcategory;


ALTER VIEW Dim_Product
AS
SELECT	ProductKey AS Product_Id
		,ProductAlternateKey AS Alt_Product_Id
		,EnglishProductName AS Product_Name
		,ProductSubcategoryKey AS Sub_Category_Id
		,DealerPrice As Dealer_Price
		,StandardCost AS Std_Price
		,ListPrice AS Price
		,EnglishDescription as Description
FROM DimProduct



SELECT * FROM FactInternetSales;
Select * from DimProduct;

Select * FROM Dim_Product