-- Workforce overview
SELECT
  COUNT(*) AS employees,
  SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attritions,
  ROUND(100.0 * SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate_pct,
  ROUND(AVG(Age),1) AS avg_age,
  ROUND(AVG(MonthlyIncome),0) AS avg_monthly_income,
  ROUND(AVG(YearsAtCompany),1) AS avg_tenure_years
FROM employees;

SELECT Department,
       COUNT(*) AS employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attritions,
       ROUND(100.0 * SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate_pct
FROM employees
GROUP BY Department
ORDER BY attrition_rate_pct DESC;
