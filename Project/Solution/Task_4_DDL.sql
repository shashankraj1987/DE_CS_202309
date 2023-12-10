-- Active: 1690043210716@@127.0.0.1@5432@project@public
-- Create Database
-- *************************************
CREATE SCHEMA Deloitte_cs;

-- 1. Create Location Table
-- *************************************
CREATE TABLE Deloitte_cs.location (
    location_id VARCHAR(25) PRIMARY KEY,
    country VARCHAR(50),
    city VARCHAR(100),
    cust_state VARCHAR(100),
    postal_code VARCHAR(10),
    region VARCHAR(10)
);

-- 2. Create Customer Table
-- *************************************
CREATE TABLE Deloitte_cs.customer(
    customer_id varchar(25),
    customer_name VARCHAR(100),
    segment varchar(15),
    location_id varchar(25),
    PRIMARY KEY (customer_id, location_id),
    FOREIGN KEY (location_id) references Deloitte_cs.location(location_id) 
);

-- 3. Create Product Table
-- *************************************
CREATE TABLE Deloitte_cs.product (
    P_Date DATE,
    product_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(20),
    sub_category VARCHAR(50),
    product_name VARCHAR(100)
);

-- 4. Create Shipment Table
-- *************************************
CREATE TABLE Deloitte_cs.shipment (
    shipment_id VARCHAR(20) PRIMARY KEY,
    order_id VARCHAR(25) REFERENCES Deloitte_cs.order(order_id),
    shipment_date TIMESTAMP,
    shipment_mode VARCHAR(25)
);

-- 5. Create customer purchase Table
-- *************************************
CREATE TABLE Deloitte_cs.customer_purchase (
    customer_id varchar(25),
    product_id VARCHAR(50) REFERENCES Deloitte_cs.product(product_ID),
    location_id VARCHAR(25),
    Order_ID VARCHAR(50) PRIMARY KEY,
    ShipmentID VARCHAR(25) REFERENCES Deloitte_cs.shipment(shipment_id),
    Sales NUMERIC,
    Quantity INT,
    Discount NUMERIC,
    Profit NUMERIC,
    order_Date Date,
    FOREIGN KEY (customer_id, location_id) references Deloitte_cs.customer(customer_id, location_id)
);
