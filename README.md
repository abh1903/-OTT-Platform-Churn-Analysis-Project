# 📊 OTT Platform Churn Analysis Project

## 🚀 Project Overview

This project analyzes customer churn behavior for an OTT platform similar to Netflix or Amazon Prime. The goal is to identify why customers leave the platform and provide actionable business recommendations to improve retention.

The project covers end-to-end data analysis including:

* Data preparation
* SQL-based churn logic
* KPI calculation
* Power BI dashboard creation
* Business insights & recommendations

---

## 🎯 Business Problem

Customer churn is a major challenge for subscription-based OTT platforms.

**Key Question:**

> Why are customers leaving the platform and what factors drive churn?

---

## 📂 Dataset Information

Total Records: 550+ Customers

### Features Included:

* Customer demographics (age, gender, city)
* Subscription details (monthly fee, auto-renew)
* Usage metrics (avg login per week, avg watch time)
* Payment behavior (payment delay days, failed payments)
* Complaint history (last 6 months)
* Last login date

⚠️ Churn column was NOT directly provided — it was calculated using SQL logic.

---

## 🛠 Tools & Technologies Used

* **SQL (PostgreSQL)** – Data cleaning & churn logic creation
* **Power BI** – Dashboard & visualization
* **Excel** – Dataset preparation
* **DAX** – KPI calculations

---

## 🧠 Churn Logic (SQL-Based)

Customers marked as churned if:

* Last login > 30 days
* OR Payment failures > 2
* OR Avg login per week < 1

Example SQL snippet:

```sql
SELECT
COUNT(CASE WHEN churn_status='Churned' THEN 1 END)*100.0/COUNT(*) AS churn_rate
FROM churn_view;
```

---

## 📈 Key Analysis Performed

* Overall Churn Rate
* Churn by Age Group
* Churn vs Login Frequency
* Churn vs Payment Delay
* Churn vs Complaints
* Impact of Auto-Renew on Churn

---

## 🔎 Key Findings

* Low login frequency strongly correlates with churn
* Customers with payment delays > 5 days show higher churn
* Multiple complaints increase churn probability
* Auto-renew users have significantly lower churn
* Low watch time users are high-risk customers

---

## 💡 Business Recommendations

1. Target low-login users with engagement campaigns
2. Improve payment reminder system
3. Resolve complaints within 48 hours
4. Offer personalized content recommendations
5. Provide loyalty rewards for long-term subscribers

---

## 📊 Dashboard Highlights

* KPI Cards (Total Customers, Churn %, Avg Login, Watch Time)
* Churn Trend Analysis
* Payment Behavior Impact
* Complaint Analysis
* Demographic Breakdown

---

## 📌 Project Structure

```
📁 OTT-Churn-Analysis
 ├── dataset.xlsx
 ├── sql_queries.sql
 ├── powerbi_dashboard.pbix
 └── README.md
```

---

## 🎯 Resume Description

Built an end-to-end OTT churn analysis project using SQL and Power BI. Analyzed 550+ customer records to identify churn drivers including login frequency, payment delays, and complaints. Designed an interactive dashboard and delivered data-driven retention strategies.

---

## 👨‍💻 Author

Abhishek Rathore 

---

⭐ If you found this project useful, consider giving it a star

