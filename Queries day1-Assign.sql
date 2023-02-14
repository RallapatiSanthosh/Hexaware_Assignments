create database hexajan_31_asgnmnt

CREATE TABLE customer_master(CUSTOMER_NUMBER VARCHAR(40) PRIMARY KEY,FIRSTNAME VARCHAR(40) NOT NULL,
middlename VARCHAR(40),lastname VARCHAR(20) NOT NULL,
CUSTOMER_CITY VARCHAR(40) NOT NULL,CUSTOMER_CONTACT_NO VARCHAR(10) NOT NULL,
occupation VARCHAR(30) NOT NULL,CUSTOMER_DATE_OF_BIRTH DATE NOT NULL)


INSERT INTO customer_master VALUES('C00001','RAMESH','CHANDRA','SHARMA','DELHI','9543198345','SERVICE','1976-12-06')
INSERT INTO customer_master VALUES('C00002','AVINASH','SUNDER','MINHA','DELHI','9876532109','SERVICE','1974-10-16')
INSERT INTO customer_master VALUES('C00003','RAHUL',NULL,'RASTOGI','DELHI','9765178901','STUDENT','1981-09-26')
INSERT INTO customer_master VALUES('C00004','PARUL','NULL','GANDHI','DELHI','9876532109','HOUSEWIFE','1976-11-03')
INSERT INTO customer_master VALUES('C00005','NAVEEN','CHANDRA','AEDEKAR','MUMBAI','8976523190','SERVICE','1976-09-19')
INSERT INTO customer_master VALUES('C00006','CHITRESH',NULL,'BARWE','MUMBAI','7651298321','STUDENT','1992-11-06')
INSERT INTO customer_master VALUES('C00007','AMIT','KUMAR','BORKAR','MUMBAI','9875189761','STUDENT','1981-09-06')
INSERT INTO customer_master VALUES('C00008','NISHA',NULL,'DAMLE','MUMBAI','7954198761','SERVICE','1975-12-03')
INSERT INTO customer_master VALUES('C00009','ABHISHEK',NULL,'DUTTA','KOLKATA','9856198761','SERVICE','1973-05-22')
INSERT INTO customer_master VALUES('C00010','SHANKAR',NULL,'NAIR','CHENNAI','8765489076','SERVICE','1976-07-12')

--Display number of customers belongs to each city
SELECT CUSTOMER_CITY,COUNT(CUSTOMER_NUMBER) as 'No_of_customers' FROM customer GROUP BY CUSTOMER_CITY

--Display all city names from customer table
SELECT DISTINCT CUSTOMER_CITY FROM customer

--Display number of customers from different occupations
SELECT occupation,COUNT(CUSTOMER_NUMBER) as 'No_of_customers' FROM customer GROUP BY  occupation

--Display customer details in ascending order based on firstname
SELECT * FROM customer ORDER BY FIRSTNAME

--Display customer details in descending order based on occupation and in ascending order based on firstname
SELECT * FROM customer ORDER BY occupation DESC, FIRSTNAME ASC

--Display all the customers whose middlename is null
SELECT * FROM customer where middlename is null

select * from customer

