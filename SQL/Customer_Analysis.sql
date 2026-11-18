CREATE DATABASE ECommerceCustomerAnalytics;

USE ECommerceCustomerAnalytics;
GO

SELECT COUNT(*) as rows FROM dbo.[Year 2009-2010];
SELECT COUNT(*) as rows FROM dbo.[Year 2010-2011];

SELECT
    Invoice, StockCode, Description, Quantity,
    COALESCE(
        TRY_CONVERT(datetime2, InvoiceDate, 120),
        TRY_CONVERT(datetime2, InvoiceDate, 105)
    ) AS InvoiceDate,
    TRY_CONVERT(decimal(10,2), Price) AS Price,
    Customer_ID, Country, '2009-2010' AS Source_Sheet
INTO dbo.RetailCombined
FROM dbo.[Year 2009-2010]

UNION ALL

SELECT
    Invoice, StockCode, Description, Quantity,
    COALESCE(
        TRY_CONVERT(datetime2, InvoiceDate, 120),
        TRY_CONVERT(datetime2, InvoiceDate, 105)
    ) AS InvoiceDate,
    TRY_CONVERT(decimal(10,2), Price) AS Price,
    Customer_ID, Country, '2010-2011' AS Source_Sheet
FROM dbo.[Year 2010-2011];

SELECT COUNT(*) as total_rows FROM dbo.RetailCombined
SELECT COUNT(*) AS FAILED_DATES FROM dbo.RetailCombined
WHERE InvoiceDate IS NULL;
SELECT COUNT(*) AS FAILED_PRICES FROM dbo.RetailCombined
WHERE Price IS NULL;
SELECT COUNT(*) AS MISSING_ID FROM dbo.RetailCombined
WHERE Customer_ID IS NULL;
SELECT COUNT(*) AS NEGATIVE_QTY FROM dbo.RetailCombined
WHERE Quantity <= 0;
SELECT COUNT(*) AS MISSING_DESC FROM dbo.RetailCombined
WHERE Description IS NULL;

SELECT Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country, COUNT(*) AS EXACTDUPCOUNT
 FROM dbo.RetailCombined
GROUP BY Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country
HAVING COUNT(*)>1

WITH DEDUPE AS (
SELECT *,
ROW_NUMBER() OVER (PARTITION BY Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country ORDER BY Quantity)
AS ROW_NUM FROM dbo.RetailCombined
)
SELECT Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country, SOURCE_SHEET INTO dbo.RetailCleaned
FROM DEDUPE
where ROW_NUM=1;

SELECT * FROM dbo.RetailCleaned