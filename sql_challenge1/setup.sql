create database challenge1;

use challenge1;

create table customers(
    ID int NOT NULL,
    First_Name varchar(255),
    Last_Name varchar(255),
    Email_ID varchar(255),
    Language varchar(255),
    Location varchar(255),
    PRIMARY KEY (ID)
    );

create table transactions(
    Transation_ID int NOT NULL,
    Customer_ID int,
    Product_ID int,
    Product_Brand varchar(255),
    Product_Description varchar(255),
    Product_Amount int,
    PRIMARY KEY (Transation_ID)
    );

LOAD DATA LOCAL INFILE '/Users/shiv007/2_project_git_shivani/code_challenges/sql_challenge1/dataset/Customers.csv'
INTO TABLE customers 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/shiv007/2_project_git_shivani/code_challenges/sql_challenge1/dataset/Transactions.csv'
INTO TABLE transactions
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

