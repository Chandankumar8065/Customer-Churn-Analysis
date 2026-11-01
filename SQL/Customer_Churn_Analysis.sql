/*
============================================================
PROJECT: Customer Churn Analysis
DATABASE: customer_churn_db
TABLE: dbo.customer_churn_cleaned
TOOL: Microsoft SQL Server
DATASET: 1,200 customers | 17 columns
CHURN ENCODING: 1 = Churned, 0 = Retained
============================================================

NOTES:
- This is the cleaned, executable version of the supplied SQL file.
- The original file had commented-out queries, an unfinished placeholder,
  a repeated contract query, and duplicate analyses for InternetService
  and Gender.
- Those duplicate sections have been consolidated. This file contains
  18 distinct analysis queries, preserving the unique analysis topics.
- Run this script in SQL Server Management Studio (SSMS).
*/

USE customer_churn_db;
GO

-- ==========================================================
-- QUERY 1: CUSTOMER CHURN BY CONTRACT TYPE
-- ==========================================================
SELECT
    ContractType,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY ContractType
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 2: CUSTOMER CHURN BY PAYMENT METHOD
-- ==========================================================
SELECT
    PaymentMethod,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY PaymentMethod
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 3: CUSTOMER CHURN BY INTERNET SERVICE
-- ==========================================================
SELECT
    InternetService,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY InternetService
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 4: CUSTOMER CHURN BY TENURE GROUP
-- ==========================================================
SELECT
    TenureGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY TenureGroup
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 5: CUSTOMER CHURN BY SIGNUP CHANNEL
-- ==========================================================
SELECT
    SignupChannel,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY SignupChannel
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 6: CUSTOMER CHURN BY GENDER
-- ==========================================================
SELECT
    Gender,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY Gender
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 7: CUSTOMER CHURN BY SENIOR CITIZEN STATUS
-- ==========================================================
SELECT
    SeniorCitizen,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY SeniorCitizen
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 8: CUSTOMER CHURN BY PARTNER STATUS
-- ==========================================================
SELECT
    Partner,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY Partner
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 9: CUSTOMER CHURN BY DEPENDENTS
-- ==========================================================
SELECT
    Dependents,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY Dependents
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 10: CUSTOMER CHURN BY PAPERLESS BILLING
-- ==========================================================
SELECT
    PaperlessBilling,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY PaperlessBilling
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 11: CUSTOMER CHURN BY MONTHLY CHARGES
-- ==========================================================
SELECT
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low Charges'
        WHEN MonthlyCharges < 70 THEN 'Medium Charges'
        ELSE 'High Charges'
    END AS ChargeGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low Charges'
        WHEN MonthlyCharges < 70 THEN 'Medium Charges'
        ELSE 'High Charges'
    END
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 12: CUSTOMER CHURN BY TOTAL CHARGES
-- ==========================================================
SELECT
    CASE
        WHEN TotalCharges < 1000 THEN 'Low Total Charges'
        WHEN TotalCharges < 3000 THEN 'Medium Total Charges'
        ELSE 'High Total Charges'
    END AS TotalChargeGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY
    CASE
        WHEN TotalCharges < 1000 THEN 'Low Total Charges'
        WHEN TotalCharges < 3000 THEN 'Medium Total Charges'
        ELSE 'High Total Charges'
    END
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 13: CUSTOMER CHURN BY SATISFACTION SCORE
-- ==========================================================
SELECT
    CASE
        WHEN SatisfactionScore <= 2 THEN 'Low Satisfaction'
        WHEN SatisfactionScore = 3 THEN 'Medium Satisfaction'
        ELSE 'High Satisfaction'
    END AS SatisfactionGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY
    CASE
        WHEN SatisfactionScore <= 2 THEN 'Low Satisfaction'
        WHEN SatisfactionScore = 3 THEN 'Medium Satisfaction'
        ELSE 'High Satisfaction'
    END
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 14: CHURN BY CONTRACT AND INTERNET SERVICE
-- ==========================================================
SELECT
    ContractType,
    InternetService,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY ContractType, InternetService
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 15: CHURN BY TENURE GROUP AND CONTRACT TYPE
-- ==========================================================
SELECT
    TenureGroup,
    ContractType,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY TenureGroup, ContractType
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 16: CHURN BY TENURE GROUP AND PAYMENT METHOD
-- ==========================================================
SELECT
    TenureGroup,
    PaymentMethod,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY TenureGroup, PaymentMethod
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 17: CHURN BY TENURE GROUP AND INTERNET SERVICE
-- ==========================================================
SELECT
    TenureGroup,
    InternetService,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY TenureGroup, InternetService
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- QUERY 18: CHURN BY TENURE GROUP AND MONTHLY CHARGE GROUP
-- ==========================================================
SELECT
    TenureGroup,
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low Charges'
        WHEN MonthlyCharges < 70 THEN 'Medium Charges'
        ELSE 'High Charges'
    END AS ChargeGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRate
FROM dbo.customer_churn_cleaned
GROUP BY
    TenureGroup,
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low Charges'
        WHEN MonthlyCharges < 70 THEN 'Medium Charges'
        ELSE 'High Charges'
    END
ORDER BY ChurnRate DESC;
GO

-- ==========================================================
-- FINAL DATASET VALIDATION
-- ==========================================================
SELECT
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    SUM(CASE WHEN Churn = 0 THEN 1 ELSE 0 END) AS RetainedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS OverallChurnRate
FROM dbo.customer_churn_cleaned;
GO