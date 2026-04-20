CREATE DATABASE ss03_bai3;
USE ss03_bai3;
CREATE TABLE CUSTOMERS (
CustomerID INT PRIMARY KEY auto_increment,
FullName VARCHAR(100),
Email VARCHAR(100),
City VARCHAR(50),
LastPurchaseDate DATE, 
Status VARCHAR(20),
Gender VARCHAR(10),
Date0fBirth DATE,
Points INT,
Address VARCHAR(255)
);

INSERT INTO CUSTOMERS (FullName, Email, City, LastPurchaseDate, Status)
VALUES
('Nguyễn Văn A', 'anv@gmail.com', N'Hà Nội', '2025-05-20', 'Active' ),
('Trần Thị B', 'btt@gmail.com', N'Ha Nội', '2026-02-10', 'Active' ),
('Lê Văn C', NULL, N'Hà Nội', '2025-01-15', 'Active' ),
('Phạm Minh D', 'dpm@gmail.com', N'Hà Nội', '2024-12-01', 'Locked' ),
('Hoàng An E', 'eha@gmail.com', N'TP HCM', '2025-03-01' , 'Active' );

select FullName, Email 
from CUSTOMERS 
where City = 'Hà Nội'
	and LastPurchaseDate <'2025-10-01'
    and Status = 'Active'
    and Email is NOT NULL;
