-- Total no of employees in  this company:--
SELECT Count(Employeenumber) AS Total_No_Of_employees from hr_employee_attrition;

-- No of Employees in the Each Departments : -- 
SELECT department,count(department) as Number_of_employees_in_each_department from hr_employee_attrition
GROUP BY Department 
ORDER BY Number_of_employees_in_each_department desc;

-- Job Satisfaction rating by joblevels : -- 
SELECT jobsatisfaction,JobLevel,count(JobSatisfaction) AS JobSatisfaction_Rating_count
,count(JobLevel) AS employees_in_different_job_level FROM hr_employee_attrition 
GROUP BY JobSatisfaction,JobLevel 
ORDER BY JobSatisfaction_Rating_count,JobLevel DESC;

-- Total no of employees in the education field: -- 
SELECT educationfield, count(employeenumber) AS Number_OF_Employees_in_each_field from hr_employee_attrition
GROUP BY EducationField
ORDER BY Number_OF_Employees_in_each_field DESC;

-- Total No of employees in the male and female: -- 
SELECT gender,count(gender) as Count_of_Gender from hr_employee_attrition 
GROUP BY gender 
ORDER BY Count_of_Gender DESC;

-- Environment satisfaction ratings: -- 
SELECT EnvironmentSatisfaction,count(EnvironmentSatisfaction) AS EnvironmentSatisfaction_Rating_count
FROM hr_employee_attrition 
GROUP BY EnvironmentSatisfaction 
ORDER BY EnvironmentSatisfaction_Rating_count DESC;

-- attrition count: -- 
SELECT attrition,count(attrition) AS count_of_Attrition from hr_employee_attrition 
GROUP BY Attrition
ORDER BY count_of_Attrition DESC;

-- No  of employees in different job roles; --
SELECT jobrole,count(employeenumber) AS count_of_employees from hr_employee_attrition 
GROUP BY JobRole
ORDER BY count_of_employees DESC;

--                                               END                                                                                                    --

