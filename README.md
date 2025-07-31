Banking Transaction Monitoring and Fraud Detection System

🔍 Objective

To build a structured and analytical database system that detects suspicious transactions and activities in banking operations by monitoring customer behavior, transaction patterns, login history, and fraud alerts using SQL queries.

⚠️ Problem Statement

Banking systems face serious threats due to:

Rapid unauthorized transactions

High-value credits from unknown sources

Fake logins from different locations or devices

Lack of structured fraud alert systems

Inability to trace user activity quickly

These issues lead to financial losses, trust issues, and operational inefficiency.

✅ How I Solved It (Approach)

Created 6 interconnected tables to simulate real banking operations:

Customers

Accounts

Transactions

Fraud_Alerts

Login_Activity

Blocked_Accounts

Inserted meaningful and suspicious data like high-value and rapid transactions.

Applied key SQL operations to extract, relate, and update data:

Joins

Subqueries

Aggregation (SUM, COUNT)

Grouping and Filtering (GROUP BY, HAVING, WHERE)

DML (INSERT, UPDATE)

Detected fraudulent patterns and blocked accounts accordingly.

🧰 SQL Techniques Used

Type

Description

DDL

CREATE tables with relationships

DML

INSERT and UPDATE to simulate real data

JOINS

Inner Joins and Left Joins to link tables

SUBQUERIES

Used in WHERE clause for filtering fraud cases

GROUP BY

Count types of fraud, frequent transactions

HAVING

Detect patterns like >3 small txns in 5 mins

📈 Insightful Queries Performed

Transaction Summary by Customer  — Joins + ORDER BY

Blocked Customer Details  — Subquery + Joins

Suspicious High Value Transactions  — Subquery with condition

Fraud Alerts Count by Type  — GROUP BY

Login from Unknown Devices or Location  — LIKE + WHERE

Frequent Micro Transactions in 5 Mins  — GROUP BY + HAVING

Blocked Account History  — Joins

Resolve Fraud Status (DML)  — UPDATE command

Total Credit vs Debit per Customer  — Aggregation + CASE

Customers With No Logins  — LEFT JOIN + IS NULL

📊 Result Summary

Detected 4 types of frauds including high-value credits and small rapid txns.

Blocked 5 accounts based on fraud indicators.

Resolved certain fraud cases using update commands.

Identified customers inactive in login monitoring.

🎓 Outcome

The project demonstrated the practical use of SQL for financial monitoring and real-world fraud detection. It helps build safer banking systems with better transaction visibility.

📁 What's Included

✅ Database & ER Diagram

✅ Sample Dataset with 50+ transactions

✅ 6 SQL Tables with relationships

✅ 10+ Query Use Cases

✅ Clean, Presentation-Ready Report and PPT

💻 Run this Project Locally

-- Step 1: Create database and tables
CREATE DATABASE BankingFraud;
USE BankingFraud;

-- Step 2: Execute all CREATE TABLE and INSERT INTO statements

-- Step 3: Run SELECT, JOIN, and UPDATE queries from the insight section

📌 Author

Gayatri Manjhi — [Model College BSc IT]

Feel free to fork, modify, and use this for academic or practical fraud detection demos!

