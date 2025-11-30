-- 9 to 5 Project --
-- Database Exploration --
-- Question 3 --

--series id for  women employees in the commercial banking industry in the financial activities supersector?
/*
USE LaborStatisticsDB;
SELECT series.series_id, series.series_title, sup.supersector_name, ind.industry_name
FROM dbo.series AS series, dbo.supersector as sup, dbo.industry AS ind
WHERE sup.supersector_code IN (
    SELECT sup.supersector_code
    FROM dbo.supersector AS sup
    WHERE sup.supersector_name LIKE '%financial activities%'
)
AND ind.industry_code IN (
    SELECT ind.industry_code
    FROM dbo.industry AS ind
    WHERE ind.industry_name LIKE '%commercial banking%'
)
AND series.series_title LIKE '%women employees%'

-- Supersector Code = 55
-- Industry code = 55522110


-- Aggregate Your Friends --
-- Question 1 --
-- How many employees were reported in 2016 in all industries?

-- There were 23,611,146 employees reported across all industries in 2016.
-- Note: this query removes records where industry is unlisted

USE LaborStatisticsDB;
SELECT COUNT(an16.series_id)
FROM 
    dbo.annual_2016 AS an16,
    dbo.industry AS ind
    WHERE ind.industry_name IS NOT NULL


-- Question 2 --
-- How many women employees were reported in 2016 in all industries?

USE LaborStatisticsDB;
SELECT DISTINCT ind.industry_name,
(
    SELECT COUNT(an16.series_id) 
    FROM dbo.annual_2016 AS an16
    WHERE series.series_title LIKE '%women employees%'
) AS women_in_industry
FROM dbo.industry AS ind,
    dbo.series AS series,
    dbo.annual_2016 AS an16

AND ind.industry_code = series.industry_code
AND series.series_id = an16.series_id

USE LaborStatisticsDB;
SELECT COUNT(an16.series_id)
FROM 
    dbo.annual_2016 AS an16,
    dbo.industry AS ind
    WHERE an16.id = ind.id
    AND ind.industry_name IS NOT NULL

USE LaborStatisticsDB;
SELECT COUNT(an16.id)
FROM 
    dbo.annual_2016 AS an16



-- Question 4 --
-- In January 2017, what is the average weekly hours worked by production and nonsupervisory employees across all industries?
USE LaborStatisticsDB;
SELECT COUNT(an16.series_id)
FROM 
    dbo.annual_2016 AS an16,
    dbo.industry AS ind
    WHERE an16.id = ind.id
    AND ind.industry_name IS NOT NULL
*/

