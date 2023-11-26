-- Databricks notebook source
select * from hr_data

-- COMMAND ----------

-- DBTITLE 1,Find Out Total Employee
Select sum(EmployeeCount) from hr_data

-- COMMAND ----------

-- DBTITLE 1,Find out Employee Count by Attrition
select sum(EmployeeCount), Attrition from hr_data
group by Attrition

-- COMMAND ----------

-- DBTITLE 1,Attrition by Age group
select sum(EmployeeCount),
case when Age between 20 and 25 then '20-25'
when age between 26 and 35 then '26-35'
when age between 36 and 45 then '36-40'
else '41+' end Age_group 
from hr_data
where Attrition = 'Yes'
group by 2

-- COMMAND ----------

select sum(EmployeeCount), Department from hr_data
Where Attrition = 'Yes'
group by Department

-- COMMAND ----------

select sum(EmployeeCount),
case when Education= 1 then 'Below College'
when Education= 2 then 'College'
when Education=3 then ' Bachelor'
when Education = 4 then 'Masters'
else 'Doctor' end Education from hr_data
Where Attrition = 'Yes'
group by 2

-- COMMAND ----------

select sum(EmployeeCount),
case when EnvironmentSatisfaction= 1 then 'Low'
when EnvironmentSatisfaction= 2 then 'Mediuam'
when EnvironmentSatisfaction=3 then 'High'
when EnvironmentSatisfaction = 4 then 'Highly satiesfied'
else 'Doctor' end Education from hr_data
Where Attrition = 'Yes'
group by 2

-- COMMAND ----------

select sum(EmployeeCount), YearsAtCompany
 from hr_data
Where Attrition = 'Yes' and YearsAtCompany < 25
group by 2

-- COMMAND ----------

select sum(EmployeeCount), JobRole from hr_data
Where Attrition = 'Yes'
group by 2

-- COMMAND ----------

#Insights as of now
1. Employee age between 26 to 35 Leaving the organization.
2. Researcch and development department employee leaving the organization.
3. Low Environment Satisfaction mployee leaving the organization.
4. Withing first 5 year's Employee leaving the organization.
5. Most of the Laboratory Technician Leaving the organization. 
