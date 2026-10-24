
Create table Health_care (

           Full_Name	Varchar primary key,
		    Age	int,
			 Gender varchar,	
			  BMI	float,
			   Children	int,
			    Smoking_Status	varchar,
				 Location	varchar,
				  Insurance_Price int

)

select * from health_care

alter table health_care rename column name to Full_name;


select * from Health_care

drop table health_care 


/*
       Q1. Display all records from the health_care table.
	    Q2. Find all people whose Age is greater than 40.
		 Q3. Find all people who have Smoking_Status = 'Yes'.
		  Q4. Display Full_Name, Age, and Insurance_Price for people whose Insurance_Price is greater than 20,000.
		   Q5. Calculate the average Insurance_Price for all people.
		    Q6. Find the maximum and minimum Insurance_Price.
			 Q7. Count how many people belong to each Gender.
			  Q8. Calculate the average BMI for smokers and non-smokers separately.
			   Q9. Find the top 5 people with the highest Insurance_Price.
			    Q10. Find the average Insurance_Price for each Location and display only locations whose average is greater than 15,000.
				
*/


	--Q1. Display all records from the health_care table.
	
	   select * from health_care
	
	
	   --Q2. Find all people whose Age is greater than 40.
	
	
	   select * from health_care
	   where age > 40
	
	
	   --Q3. Find all people who have Smoking_Status = 'Yes'.
	
	
	
	
	   select * from health_care 
	   where smoking_status = 'yes'
	
	
	
	   --Q4. Display Full_Name, Age, and Insurance_Price for people whose Insurance_Price is greater than 20,000.
	
	
	   select * from health_care
	
	
	   select 
	       Full_Name, 
		    Age,
			Insurance_Price 
			from  health_care
			where Insurance_Price > 20000
	
	
	
			--Q5. Calculate the average Insurance_Price for all people.
	
	
			select avg(Insurance_Price) as avginsurance_price
			from health_care
	
	
			--Q6. Find the maximum and minimum Insurance_Price.
	
			select 
			 max(Insurance_Price) as max_Insurance_Price ,
			  min(Insurance_Price) as min_Insurance_Price
			  from health_care
	
	
			  -- Q7. Count how many people belong to each Gender.
	
	
			  select gender, count(*)
			  from health_care
			  group by gender 
			  having count(*)>1
	
	
			  --Q8. Calculate the average BMI for smokers and non-smokers separately.
	
			  select * from health_care
			  select 
			   smoking_status ,
			    avg(bmi) as avg_bmi
				 from health_care
				  group by smoking_status
	
			  --Q9. Find the top 5 people with the highest Insurance_Price.
	
			  select * from health_care 
	
			  select Insurance_Price from health_care
			  order by Insurance_Price desc limit 5
	
	
			  --Q10. Find the average Insurance_Price for each Location and display only locations whose average is greater than 15,000.
	
	
			  select * from health_care
	
	
			  select  Location , avg(Insurance_Price)  as avg_Insurance_Price
			   from health_care 
			   group by Location
			   having  avg(Insurance_Price) > 15000
		   

		  
			 
			  
		



   




