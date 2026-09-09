-- Job role
SELECT Department, JobRole, COUNT(*) employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) attritions,
       ROUND(100.0*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) attrition_rate_pct
FROM employees
GROUP BY Department, JobRole
ORDER BY attrition_rate_pct DESC;

-- Job level
SELECT JobLevel, COUNT(*) employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) attritions,
       ROUND(100.0*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) attrition_rate_pct
FROM employees
GROUP BY JobLevel ORDER BY JobLevel;

-- Salary band
SELECT CASE
         WHEN MonthlyIncome < 4000 THEN '<₹4K'
         WHEN MonthlyIncome < 7000 THEN '₹4K–₹7K'
         WHEN MonthlyIncome < 12000 THEN '₹7K–₹12K'
         ELSE '₹12K+'
       END salary_band,
       COUNT(*) employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) attritions,
       ROUND(100.0*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) attrition_rate_pct
FROM employees
GROUP BY salary_band
ORDER BY MIN(MonthlyIncome);

-- Tenure band
SELECT CASE
         WHEN YearsAtCompany < 2 THEN '<2 years'
         WHEN YearsAtCompany <= 3 THEN '2–3 years'
         WHEN YearsAtCompany <= 5 THEN '4–5 years'
         WHEN YearsAtCompany <= 10 THEN '6–10 years'
         ELSE '10+ years'
       END tenure_band,
       COUNT(*) employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) attritions,
       ROUND(100.0*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) attrition_rate_pct
FROM employees
GROUP BY tenure_band
ORDER BY MIN(YearsAtCompany);
