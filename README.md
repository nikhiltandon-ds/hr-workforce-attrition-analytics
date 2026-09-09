# HR Workforce & Attrition Analytics

## Business Objective
Analyze workforce composition and employee attrition to help HR leaders identify high-exposure employee segments and prioritize retention actions.

## Questions
- What is the overall attrition rate?
- Which departments and job roles show the highest attrition?
- How does attrition vary by job level, salary band and tenure?
- Does overtime correlate with higher attrition?
- Which segments combine elevated attrition with meaningful headcount exposure?

## Portfolio Dataset
The public IBM HR Analytics Employee Attrition & Performance dataset is described as a fictional dataset created by IBM data scientists and contains 1,470 employee records with 35 fields. This project bundles a **self-contained synthetic portfolio extract** generated from the documented schema so the project can be distributed reproducibly without claiming the rows are the original source download.

Source/reference: https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset

## Portfolio Results
- Employees: 1,470
- Attritions: 245
- Attrition rate: 16.7%
- Average age: 37.5
- Average monthly income: ₹8,443
- Average tenure: 6.8 years
- Highest department attrition rate: Sales (20.5%)
- Highest job-role attrition rate: Sales Executive (26.4%)
- Highest salary-band attrition rate: <₹4K (21.6%)
- Highest tenure-band attrition rate: <2 years (22.0%)
- Overtime attrition rate: 24.2% vs 13.6% for non-overtime employees

## Management Recommendations
1. Prioritize departments/roles with both elevated attrition and meaningful headcount.
2. Review early-tenure onboarding, manager check-ins and role clarity.
3. Monitor overtime exposure and workload distribution where attrition is elevated.
4. Review compensation bands with high attrition and material workforce concentration.
5. Treat commute/travel as contextual workforce-health indicators.
6. Re-run the dashboard periodically to see whether actions change the pattern.

## Technology
- SQL
- Power BI
- DAX

## Project Structure
- `data/` — source-like portfolio CSV and analysis outputs
- `sql/` — reproducible SQL queries
- `powerbi/` — DAX measures and dashboard build guide
- `docs/` — data dictionary, source note and management recommendations
- `images/` — dashboard preview

## Important analytical note
This project is intentionally **descriptive and diagnostic**. It does not use machine learning or claim that observed associations are causal.
