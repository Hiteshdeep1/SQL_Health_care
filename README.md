# SQL_Health_care
The Health Care Data Analysis project focuses on analysing healthcare data using SQL to identify useful insights related to patient demographics, BMI, smoking habits, family size, location, and insurance prices.

The project uses SQL queries to explore and analyse healthcare records, helping uncover patterns and trends in insurance costs across different groups of people. It demonstrates practical SQL skills, including data filtering, aggregate functions, grouping, sorting, and conditional analysis.

# Project Objectives
Analyse patient demographics, including age and gender.
Examine the relationship between smoking status and insurance prices.
Calculate average, minimum, and maximum insurance prices.
Analyse healthcare insurance costs across different locations.
Explore BMI, number of children, and other patient characteristics.
Generate meaningful insights to support data-driven decision-making.

# Tools & Technologies
SQL – Data querying and analysis
PostgreSQL – Database management
pgAdmin – Database administration and query execution
GitHub – Project documentation and version control

# Key SQL Concepts
SELECT and WHERE
GROUP BY and HAVING
Aggregate functions: AVG(), SUM(), COUNT(), MIN(), MAX()
ORDER BY and LIMIT
Filtering and conditional analysis

# Project Outcome
This project demonstrates how SQL can be used to transform healthcare data into meaningful information. It helps strengthen data analysis skills and provides practical experience in exploring healthcare trends and insurance pricing patterns.

 **Database Creation**: The project starts by creating a database named `SQL_Health_care`.

# Dataset: Health_care Sales Dataset
```SQL
Create table Health_care (

 Full_Name	Varchar primary key,
  Age	int,
   Gender varchar,	
    BMI	float,
     Children	int,
      Smoking_Status	varchar,
       Location	varchar,
        Insurance_Price int

);
```


1. **Display all records from the health_care table**
```
  select * from health_care:
```

2. **Find all people whose Age is greater than 40**
```
 select * from health_care
	   where age > 40
```
3. **Find all people who have Smoking_Status = 'Yes'**
```
select * from health_care 
where smoking_status = 'yes'
```
4. **Display Full_Name, Age, and Insurance_Price for people whose Insurance_Price is greater than 20,000**
```
select
  Full_Name, 
  Age,
  Insurance_Price 
  from  health_care
  where Insurance_Price > 20000
```

5. **Calculate the average Insurance_Price for all people**
```
select avg(Insurance_Price) as avginsurance_price
			from health_care
```

6. **Find the maximum and minimum Insurance_Price**
```
	select 
			 max(Insurance_Price) as max_Insurance_Price ,
			  min(Insurance_Price) as min_Insurance_Price
			  from health_care
```

7. **Count how many people belong to each Gender**
```
select gender, count(*)
from health_care
group by gender 
having count(*)>1
```

8. **Calculate the average BMI for smokers and non-smokers separately**
```
select 
smoking_status ,
 avg(bmi) as avg_bmi
from health_care
group by smoking_status
```
9. **Find the top 5 people with the highest Insurance_Price**
```
select Insurance_Price from health_care
order by Insurance_Price desc limit 5
```

10. **Find the average Insurance_Price for each Location and display only locations whose average is greater than 15,000**

```
 select  Location , avg(Insurance_Price)  as avg_Insurance_Price
from health_care 
group by Location
having  avg(Insurance_Price) > 15000
```

# FInding
The Health Care Data Analysis project uses SQL to explore healthcare records and understand patterns in insurance prices based on patient demographics and lifestyle factors.
Key areas of analysis include:
Patient Demographics: Analysed patient age and gender to understand the composition of the dataset.
Smoking Status: Examined smoking status to compare insurance prices between smokers and non-smokers.
Insurance Price Analysis: Calculated average, minimum, and maximum insurance prices to understand the distribution of insurance costs.
Location-Based Analysis: Grouped records by location to identify areas with an average insurance price greater than 15,000.
BMI Analysis: Explored Body Mass Index (BMI) to investigate potential patterns in insurance prices.
Family Size Analysis: Examined the number of children to explore possible associations with insurance costs.
SQL Query Practice: Used filtering, grouping, aggregate functions, sorting, and conditional analysis to extract meaningful information.

# Report
The SQL analysis provides an overview of healthcare data and insurance pricing patterns across different patient groups.
The analysis focuses on the following areas:
Data Exploration: Retrieved and examined healthcare records to understand the available columns and data.
Demographic Analysis: Explored patient age and gender distributions.
Smoking Analysis: Filtered records by smoking status and compared insurance pricing patterns.
Insurance Cost Analysis: Used aggregate functions such as AVG(), MIN(), and MAX() to summarise insurance prices.
Location Analysis: Applied GROUP BY and HAVING to identify locations where the average insurance price exceeds 15,000.
Business Insights: Organised the results into useful summaries that can support further healthcare cost analysis.
The project demonstrates how SQL can be used to retrieve, organise, and analyse healthcare data efficiently.

# Conclusion

The Health Care Data Analysis project provided practical experience in using SQL to analyse healthcare records and investigate insurance pricing patterns.
By applying SQL queries, aggregate functions, filtering conditions, and grouping techniques, the project explored how insurance prices vary across different patient characteristics and locations.
	
   





