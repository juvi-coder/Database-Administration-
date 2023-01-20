/*Bubs wants you to track information on 
his customers, 
his employees,
his products, 
and the purchases customers make. 
Think about how many tables you should create. 
Which data goes in which tables? 
How should the tables relate to one another? */

/* Customers table 
PK - customer_id
First_Name, 
Last_Name,
Email_id */

/* Employee table
PK - Employee_ID,
First_Name, 
Last_Name,
Start Date,
Position */

/* Products Table
PK - Product_ID,
Product_Name,
Launch_Date */

/* Purchases 
PK - Purchase_ID,
Customer_Id,
product_ID,
purchased_at
amount_usd */

/* Given the database design you came up with, 
use Workbench to create an EER diagram of the database.*/

/*Create a schema called bubsbooties. 
Within that schema, create the tables that you have diagramed out.*/

CREATE SCHEMA bubsbooties;
USE bubsbooties;
CREATE TABLE Customers(
customer_id BIGINT PRIMARY KEY AUTO_INCREMENT,
First_Name VARCHAR(100) NOT NUll,
Last_Name VARCHAR(100) NOT NULL,
Email_id VARCHAR(100) NOT NULL);

CREATE TABLE Employees(
Employee_ID BIGINT PRIMARY KEY AUTO_INCREMENT,
First_Name VARCHAR(100) NOT NUll,
Last_Name VARCHAR(100) NOT NULL,
Start_Date DATE NOT NULL,
POSITION VARCHAR(100) NOT NULL );

CREATE TABLE Products(
Product_ID BIGINT PRIMARY KEY AUTO_INCREMENT,
Product_Name VARCHAR(100) NOT NUll,
Launch_Date DATE NOT NULL);

CREATE TABLE customer_purchases(
Customer_pruchase_ID BIGINT PRIMARY KEY AUTO_INCREMENT,
Product_ID BIGINT,
customer_id BIGINT,
Employee_ID BIGINT,
Amount BIGINT NOT NULL);

-- Foreign Keys are connected using UI