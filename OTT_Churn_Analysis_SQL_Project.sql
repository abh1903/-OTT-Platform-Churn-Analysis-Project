CREATE TABLE ott_users (
    Customer_ID VARCHAR(10),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(50),
    Subscription_Plan VARCHAR(20),
    Monthly_Fee INT,
    Subscription_Start_Date DATE,
    Last_Login_Date DATE,
    Avg_Login_Per_Week INT,
    Avg_Watch_Time_Hours_Per_Week INT,
    Watch_Time_Trend VARCHAR(20),
    Payment_Delay_Days INT,
    Payment_Failures_Last_6M INT,
    Auto_Renew VARCHAR(5),
    No_of_Complaints_Last_6M INT,
    Complaint_Type VARCHAR(20),
    Device_Type VARCHAR(20),
    Content_Preference VARCHAR(30),
    Offers_Used_Last_6M INT,
    App_Rating_Given INT
);

select * from ott_users

--1️⃣ Total Customers
select count(*) from ott_users

--2️⃣ Plan Distribution	
select subscription_plan , count(*)
from ott_users
group by subscription_plan

--3️⃣ City Wise Customers
select city,
	count(*) as Total
	from ott_users
	group by city

--4️⃣ Create Churn View (Professional W
create view churn_analysis as 
select *,
case
	when current_date - last_login_date >60
		or avg_login_per_week = 0
		then 'Churn'
		else 'Active'
end as Churn_status
from ott_users

--7️⃣ Check Churn Distribution
select churn_status , count(*) as Total
from churn_analysis
group by churn_status

--8️⃣ Calculate Churn Rate %
select 
	churn_status,
	count(*) as total,
	count(*)*100/sum(count(*))over() as percenatge 
from churn_analysis
group by churn_status

--Find Why Customers Are Leaving 
--9️⃣ Login Frequency Impact
select 
	case
	when avg_login_per_week = 0 then 'No Login'
	when avg_login_per_week <= 2 then 'Low Login'
	else 'High Login'
end as Login_category,
churn_status,
count(*) as total
from churn_analysis
group by Login_category , Churn_status
	






