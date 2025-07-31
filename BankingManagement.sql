CREATE database BankingFraud;
use BankingFraud;
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  dob DATE,
  email VARCHAR(100),
  phone VARCHAR(15),
  address TEXT
);
-- Insert  customers
INSERT INTO Customers VALUES 
(1, 'Gayatri Manjhi', '2002-08-15', 'gayatri.manjhi@mail.com', '9876100011', 'Kalyan, Maharashtra'),
(2, 'Muskan Gupta', '2001-12-02', 'muskan.gupta@mail.com', '9876100022', 'Thane, Maharashtra'),
(3, 'Aman Sahu', '1999-05-28', 'aman.sahu@mail.com', '9876100033', 'Nagpur, Maharashtra'),
(4, 'Jaya Mehta', '2000-03-12', 'jaya.mehta@mail.com', '9876100044', 'Ahmedabad, Gujarat'),
(5, 'Achal Yadav', '2002-01-20', 'achal.yadav@mail.com', '9876100055', 'Kanpur, Uttar Pradesh'),
(6, 'Ravi Sharma', '1990-07-10', 'ravi.sharma@mail.com', '9876100066', 'Jaipur, Rajasthan'),
(7, 'Sneha Rao', '1995-07-19', 'sneha.rao@mail.com', '9876100077', 'Mumbai, Maharashtra'),
(8, 'Rahul Mehta', '1988-05-10', 'rahul.mehta@mail.com', '9876100088', 'Bangalore, Karnataka'),
(9, 'Neha Shah', '1992-11-01', 'neha.shah@mail.com', '9876100099', 'Ahmedabad, Gujarat'),
(10, 'Ankit Desai', '1991-09-18', 'ankit.desai@mail.com', '9876100100', 'Surat, Gujarat'),
(11, 'Priya Nair', '1996-06-25', 'priya.nair@mail.com', '9876100111', 'Kochi, Kerala'),
(12, 'Nikhil Jain', '1985-03-05', 'nikhil.jain@mail.com', '9876100122', 'Indore, Madhya Pradesh'),
(13, 'Pooja Patel', '1993-10-30', 'pooja.patel@mail.com', '9876100133', 'Vadodara, Gujarat'),
(14, 'Deepak Kumar', '1990-02-28', 'deepak.kumar@mail.com', '9876100144', 'Delhi'),
(15, 'Simran Kaur', '1994-08-12', 'simran.kaur@mail.com', '9876100155', 'Ludhiana, Punjab'),
(16, 'Manish Verma', '1989-04-07', 'manish.verma@mail.com', '9876100166', 'Patna, Bihar'),
(17, 'Kajal Singh', '1998-12-23', 'kajal.singh@mail.com', '9876100177', 'Lucknow, Uttar Pradesh'),
(18, 'Aarti Joshi', '1997-01-18', 'aarti.joshi@mail.com', '9876100188', 'Pune, Maharashtra'),
(19, 'Rajeev Reddy', '1987-11-09', 'rajeev.reddy@mail.com', '9876100199', 'Hyderabad, Telangana'),
(20, 'Meena Kumari', '1992-05-14', 'meena.kumari@mail.com', '9876100200', 'Chennai, Tamil Nadu');

CREATE TABLE Accounts (
  account_id INT PRIMARY KEY,
  customer_id INT,
  account_type VARCHAR(50),
  balance DECIMAL(12,2),
  status VARCHAR(20),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Accounts VALUES
(1001, 1, 'Savings', 25000.00, 'Active'),
(1002, 2, 'Current', 48000.00, 'Active'),
(1003, 3, 'Savings', 10000.00, 'Active'),
(1004, 4, 'Savings', 22000.00, 'Active'),
(1005, 5, 'Salary', 18000.00, 'Active'),
(1006, 6, 'Current', 55000.00, 'Active'),
(1007, 7, 'Savings', 30000.00, 'Active'),
(1008, 8, 'Savings', 14000.00, 'Active'),
(1009, 9, 'Salary', 26000.00, 'Active'),
(1010, 10, 'Savings', 16000.00, 'Active'),
(1011, 11, 'Current', 44000.00, 'Active'),
(1012, 12, 'Savings', 17000.00, 'Active'),
(1013, 13, 'Salary', 20000.00, 'Active'),
(1014, 14, 'Savings', 33000.00, 'Active'),
(1015, 15, 'Current', 29500.00, 'Active'),
(1016, 16, 'Savings', 31000.00, 'Active'),
(1017, 17, 'Salary', 22000.00, 'Active'),
(1018, 18, 'Savings', 24000.00, 'Active'),
(1019, 19, 'Current', 27500.00, 'Active'),
(1020, 20, 'Savings', 15000.00, 'Active');


CREATE TABLE Transactions (
  transaction_id INT PRIMARY KEY,
  account_id INT,
  type VARCHAR(10), -- 'credit' or 'debit'
  amount DECIMAL(10,2),
  txn_date DATETIME,
  remarks VARCHAR(255),
  FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);
INSERT INTO Transactions VALUES
(1, 1001, 'credit', 25000.00, '2025-07-01 09:15:00', 'Salary Deposit'),
(2, 1001, 'debit', 3000.00, '2025-07-02 14:10:00', 'Online Shopping'),
(3, 1002, 'credit', 18000.00, '2025-07-03 10:30:00', 'Client Payment'),
(4, 1002, 'debit', 2000.00, '2025-07-04 12:00:00', 'Mobile Recharge'),
(5, 1003, 'credit', 5000.00, '2025-07-05 11:45:00', 'UPI Deposit'),
(6, 1003, 'debit', 1000.00, '2025-07-06 15:00:00', 'Utility Bill'),
(7, 1004, 'credit', 10000.00, '2025-07-07 10:00:00', 'Refund from Vendor'),
(8, 1004, 'debit', 2500.00, '2025-07-08 13:30:00', 'Petrol'),
(9, 1005, 'credit', 22000.00, '2025-07-09 08:55:00', 'Salary'),
(10, 1005, 'debit', 6000.00, '2025-07-09 18:00:00', 'Rent Payment'),
(11, 1006, 'credit', 15000.00, '2025-07-10 09:20:00', 'NEFT Transfer'),
(12, 1006, 'debit', 3000.00, '2025-07-10 17:30:00', 'Medical Bill'),
(13, 1007, 'credit', 12000.00, '2025-07-11 09:45:00', 'Investment Return'),
(14, 1007, 'debit', 1500.00, '2025-07-11 14:10:00', 'Amazon Order'),
(15, 1008, 'credit', 10000.00, '2025-07-12 08:30:00', 'UPI Transfer'),
(16, 1008, 'debit', 1200.00, '2025-07-12 19:00:00', 'Electricity Bill'),
(17, 1009, 'credit', 13000.00, '2025-07-13 10:00:00', 'Salary'),
(18, 1009, 'debit', 1800.00, '2025-07-13 20:15:00', 'Swiggy Food'),
(19, 1010, 'credit', 8000.00, '2025-07-14 11:00:00', 'Deposit via ATM'),
(20, 1010, 'debit', 1000.00, '2025-07-14 16:45:00', 'Grocery Payment'),

(21, 1011, 'credit', 17000.00, '2025-07-15 09:10:00', 'Salary Credit'),
(22, 1011, 'debit', 2500.00, '2025-07-15 18:30:00', 'Mobile Recharge'),
(23, 1012, 'credit', 6000.00, '2025-07-16 08:45:00', 'UPI Transfer'),
(24, 1012, 'debit', 800.00, '2025-07-16 19:10:00', 'Domino\'s Pizza'),
(25, 1013, 'credit', 9000.00, '2025-07-17 10:20:00', 'Bonus'),
(26, 1013, 'debit', 1100.00, '2025-07-17 20:00:00', 'Recharge'),
(27, 1014, 'credit', 20000.00, '2025-07-18 09:00:00', 'Client Transfer'),
(28, 1014, 'debit', 5000.00, '2025-07-18 15:00:00', 'Credit Card Bill'),
(29, 1015, 'credit', 14500.00, '2025-07-19 08:15:00', 'NEFT Salary'),
(30, 1015, 'debit', 3500.00, '2025-07-19 20:45:00', 'Dinner at Restaurant'),

(31, 1016, 'credit', 11000.00, '2025-07-20 10:30:00', 'Stock Dividends'),
(32, 1016, 'debit', 2700.00, '2025-07-20 19:30:00', 'Water Bill'),
(33, 1017, 'credit', 10000.00, '2025-07-21 09:00:00', 'Scholarship'),
(34, 1017, 'debit', 1200.00, '2025-07-21 18:00:00', 'Recharge'),
(35, 1018, 'credit', 8500.00, '2025-07-22 11:00:00', 'UPI Deposit'),
(36, 1018, 'debit', 900.00, '2025-07-22 20:00:00', 'Snacks & Cafe'),
(37, 1019, 'credit', 12000.00, '2025-07-23 09:30:00', 'Consulting Fee'),
(38, 1019, 'debit', 2000.00, '2025-07-23 18:20:00', 'Zomato Dinner'),
(39, 1020, 'credit', 13000.00, '2025-07-24 10:40:00', 'Work from Home Pay'),
(40, 1020, 'debit', 1600.00, '2025-07-24 19:00:00', 'App Subscription'),

-- More small transactions (rapid/suspicious test)
(41, 1001, 'debit', 300.00, '2025-07-25 10:00:00', 'Coffee'),
(42, 1001, 'debit', 250.00, '2025-07-25 10:01:00', 'Metro Card'),
(43, 1001, 'debit', 200.00, '2025-07-25 10:02:00', 'Snacks'),
(44, 1001, 'debit', 150.00, '2025-07-25 10:03:00', 'Wallet Top-up'),
(45, 1001, 'debit', 100.00, '2025-07-25 10:04:00', 'Parking'),
(46, 1001, 'debit', 50.00,  '2025-07-25 10:05:00', 'Small Purchase'),

-- Few large credits
(47, 1005, 'credit', 70000.00, '2025-07-25 12:30:00', 'Investment Return'),
(48, 1006, 'credit', 55000.00, '2025-07-25 14:00:00', 'Freelance Payment'),
(49, 1007, 'credit', 62000.00, '2025-07-25 15:00:00', 'FD Maturity'),
(50, 1008, 'credit', 72000.00, '2025-07-25 16:00:00', 'Insurance Claim');

CREATE TABLE Fraud_Alerts (
  alert_id INT PRIMARY KEY AUTO_INCREMENT,
  transaction_id INT,
  alert_type VARCHAR(100),     -- e.g., 'High Value', 'Multiple Small Txns', 'Blacklisted Account'
  alert_time DATETIME DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(20) DEFAULT 'Pending', -- Pending, Resolved, Escalated
  FOREIGN KEY (transaction_id) REFERENCES Transactions(transaction_id)
);
INSERT INTO Fraud_Alerts (transaction_id, alert_type)
VALUES 
(41, 'Multiple Small Txns'),
(42, 'Multiple Small Txns'),
(43, 'Multiple Small Txns'),
(44, 'Multiple Small Txns'),
(45, 'Multiple Small Txns'),
(46, 'Multiple Small Txns');

INSERT INTO Fraud_Alerts (transaction_id, alert_type)
VALUES 
(47, 'High Value Credit'),
(48, 'High Value Credit'),
(49, 'High Value Credit'),
(50, 'High Value Credit');

CREATE TABLE Login_Activity (
  activity_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  login_time DATETIME,
  location VARCHAR(100),       -- Could be IP-based or region
  device_info VARCHAR(100),    -- Device/browser used
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Login_Activity (customer_id, login_time, location, device_info)
VALUES
(1,  '2025-07-24 08:00:00', 'Kalyan, Maharashtra', 'Chrome on Windows 10'),
(2,  '2025-07-24 08:10:00', 'Thane, Maharashtra', 'Edge on Windows 11'),
(3,  '2025-07-24 08:20:00', 'Nagpur, Maharashtra', 'Safari on iPhone'),
(4,  '2025-07-24 08:25:00', 'Ahmedabad, Gujarat', 'Chrome on Android'),
(5,  '2025-07-24 08:40:00', 'Kanpur, UP', 'Firefox on Linux'),
(6,  '2025-07-24 09:00:00', 'Jaipur, Rajasthan', 'Chrome on Windows 10'),
(7,  '2025-07-24 09:05:00', 'Mumbai, Maharashtra', 'Safari on Mac'),
(8,  '2025-07-24 09:15:00', 'Bangalore, Karnataka', 'Chrome on Android'),
(9,  '2025-07-24 09:20:00', 'Ahmedabad, Gujarat', 'Edge on Windows 11'),
(10, '2025-07-24 09:35:00', 'Surat, Gujarat', 'Chrome on Linux'),
(11, '2025-07-24 10:00:00', 'Kochi, Kerala', 'Safari on iPhone'),
(12, '2025-07-24 10:10:00', 'Indore, MP', 'Chrome on Windows 11'),
(13, '2025-07-24 10:15:00', 'Vadodara, Gujarat', 'Edge on MacOS'),
(14, '2025-07-24 10:30:00', 'Delhi', 'Chrome on Windows 7'),
(15, '2025-07-24 10:35:00', 'Ludhiana, Punjab', 'Chrome on Android'),
(16, '2025-07-24 10:40:00', 'Patna, Bihar', 'Safari on iPad'),
(17, '2025-07-24 10:50:00', 'Lucknow, UP', 'Chrome on Windows 10'),
(18, '2025-07-24 11:00:00', 'Pune, Maharashtra', 'Firefox on Linux'),
(19, '2025-07-24 11:05:00', 'Hyderabad, Telangana', 'Edge on Windows 10'),
(20, '2025-07-24 11:15:00', 'Chennai, Tamil Nadu', 'Safari on Mac');

CREATE TABLE Blocked_Accounts (
  block_id INT PRIMARY KEY AUTO_INCREMENT,
  account_id INT,
  reason TEXT,
  block_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

INSERT INTO Blocked_Accounts (account_id, reason, block_date)
VALUES
(1001, 'Multiple rapid small transactions detected within 5 minutes.', '2025-07-25 10:10:00'),
(1005, 'Suspicious high-value credit received from unknown source.', '2025-07-25 12:40:00'),
(1006, 'Account flagged due to login attempts from two different cities within 10 minutes.', '2025-07-25 14:15:00'),
(1014, 'Reported stolen account credentials by customer.', '2025-07-26 08:30:00'),
(1008, 'High-value insurance claim flagged for manual verification.', '2025-07-25 16:10:00');

# 1. View All Transactions with Customer and Account Details
SELECT c.name, a.account_type, t.type, t.amount, t.txn_date, t.remarks
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.account_id
ORDER BY t.txn_date DESC;

# 2. Get customer details for those whose account is blocked
SELECT * FROM Customers 
WHERE customer_id IN (
  SELECT customer_id 
  FROM Accounts 
  WHERE account_id IN (
    SELECT account_id FROM Blocked_Accounts
  )
);
 # 3. List all accounts that had a suspicious transaction (amount > ₹50,000)
SELECT account_id, amount 
FROM Transactions 
WHERE transaction_id IN (
  SELECT transaction_id FROM Fraud_Alerts 
  WHERE alert_type = 'High Value Credit'
);


# 4. Count Number of Fraud Alerts by Type
SELECT alert_type, COUNT(*) AS total_alerts
FROM Fraud_Alerts
GROUP BY alert_type;

#5.Check Login Activity from Foreign or Unknown Devices
SELECT la.customer_id, c.name, la.login_time, la.location, la.device_info
FROM Login_Activity la
JOIN Customers c ON la.customer_id = c.customer_id
WHERE la.location NOT LIKE '%India%' OR la.device_info LIKE '%Unknown%';

# 6.Identify Accounts with More Than 3 Transactions Below ₹500 in 5 Minutes
SELECT account_id
FROM Transactions
WHERE amount < 500 AND txn_date BETWEEN '2025-07-25 10:00:00' AND '2025-07-25 10:05:00'
GROUP BY account_id
HAVING COUNT(*) > 3;

#  7. Show Blocked Accounts and Reasons
SELECT b.block_id, a.account_id, c.name, b.reason, b.block_date
FROM Blocked_Accounts b
JOIN Accounts a ON b.account_id = a.account_id
JOIN Customers c ON a.customer_id = c.customer_id;

# Safe Mode On before running DML command
SET SQL_SAFE_UPDATES = 0;

# 8. Update Fraud Alert Status to 'Resolved'
UPDATE Fraud_Alerts
SET status = 'Resolved'
WHERE alert_type = 'Multiple Small Txns' AND status = 'Pending';

# 9. Find Total Credit and Debit Amounts for Each Customer
SELECT c.name,
  SUM(CASE WHEN t.type = 'credit' THEN t.amount ELSE 0 END) AS total_credits,
  SUM(CASE WHEN t.type = 'debit' THEN t.amount ELSE 0 END) AS total_debits
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.account_id
GROUP BY c.name;

# 10. Detect Customers Who Have No Login Records
SELECT c.customer_id, c.name
FROM Customers c
LEFT JOIN Login_Activity l ON c.customer_id = l.customer_id
WHERE l.activity_id IS NULL;




