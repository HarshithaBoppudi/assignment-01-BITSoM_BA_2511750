CREATE DATABASE rdbms_project;
USE rdbms_project;

CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL UNIQUE,
    customer_city VARCHAR(50) NOT NULL
);

CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE SalesReps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL UNIQUE,
    office_address VARCHAR(200) NOT NULL
);

CREATE TABLE Orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    quantity INT NOT NULL,
    order_date DATE NOT NULL,
    sales_rep_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (sales_rep_id) REFERENCES SalesReps(sales_rep_id)
);

INSERT INTO Customers VALUES ('C001','Rohan Mehta','rohan@gmail.com','Mumbai');
INSERT INTO Customers VALUES ('C002','Priya Sharma','priya@gmail.com','Delhi');
INSERT INTO Customers VALUES ('C003','Amit Verma','amit@gmail.com','Bangalore');
INSERT INTO Customers VALUES ('C004','Sneha Iyer','sneha@gmail.com','Chennai');
INSERT INTO Customers VALUES ('C005','Vikram Singh','vikram@gmail.com','Mumbai');

INSERT INTO SalesReps VALUES ('SR01','Deepak Joshi','deepak@corp.com','Mumbai HQ, Nariman Point, Mumbai - 400021');
INSERT INTO SalesReps VALUES ('SR02','Anita Desai','anita@corp.com','Delhi Office, Connaught Place, New Delhi - 110001');
INSERT INTO SalesReps VALUES ('SR03','Ravi Kumar','ravi@corp.com','South Zone, MG Road, Bangalore - 56000');

INSERT INTO Products VALUES ('P007','Pen Set','Stationery',250);
INSERT INTO Products VALUES ('P002','Mouse','Electronics',800);
INSERT INTO Products VALUES ('P003','Desk Chair','Furniture',8500);
INSERT INTO Products VALUES ('P004','Notebook','Stationery',120);
INSERT INTO Products VALUES ('P005','Headphones','Electronics',3200);

INSERT INTO Orders VALUES ('ORD1027','C002','P004',4,'2023-11-02','SR02');
INSERT INTO Orders VALUES ('ORD1114','C001','P007',2,'2023-08-06','SR01');
INSERT INTO Orders VALUES ('ORD1075','C005','P003',3,'2023-04-18','SR03');
INSERT INTO Orders VALUES ('ORD1002','C002','P005',1,'2023-01-17','SR02');
INSERT INTO Orders VALUES ('ORD1132','C003','P007',5,'2023-03-07','SR02');








