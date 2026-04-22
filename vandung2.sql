USE my1;

CREATE TABLE CUSTOMERS (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100), 
    Age INT
);

-- Ràng buộc Email: bắt buộc nhập và không trùng
ALTER TABLE CUSTOMERS
MODIFY Email VARCHAR(100) NOT NULL UNIQUE;

-- Ràng buộc Age: không được âm
ALTER TABLE CUSTOMERS
ADD CONSTRAINT chk_age CHECK (Age >= 0);

