-- Overtime
SELECT OverTime, COUNT(*) employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) attritions,
       ROUND(100.0*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) attrition_rate_pct
FROM employees
GROUP BY OverTime;

-- Long commute
SELECT
  CASE WHEN DistanceFromHome >= 15 THEN '15+ distance units' ELSE '<15 distance units' END commute_segment,
  COUNT(*) employees,
  SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) attritions,
  ROUND(100.0*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) attrition_rate_pct
FROM employees
GROUP BY commute_segment;

-- Low satisfaction
SELECT JobSatisfaction, COUNT(*) employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) attritions,
       ROUND(100.0*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) attrition_rate_pct
FROM employees
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;
