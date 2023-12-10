-- Active: 1690043210716@@127.0.0.1@5432@project@public
-- Create Database
-- *************************************
CREATE SCHEMA Deloitte_cs;

-- Create Location Table
-- *************************************
CREATE TABLE Deloitte_cs.location (
    location_id VARCHAR(25) PRIMARY KEY,
    country VARCHAR(50),
    city VARCHAR(100),
    cust_state VARCHAR(100),
    postal_code VARCHAR(10),
    region VARCHAR(10)
);

-- Create Customer Table
-- *************************************
CREATE TABLE Deloitte_cs.customer(
    customer_id varchar(25),
    customer_name VARCHAR(100),
    segment varchar(15),
    location_id varchar(25),
    PRIMARY KEY (customer_id, location_id),
    FOREIGN KEY (location_id) references Deloitte_cs.location(location_id) 
);
-- Create Product Table
-- *************************************
CREATE TABLE Deloitte_cs.product (
    product_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(20),
    sub_category VARCHAR(50),
    product_name VARCHAR(255)
);

-- Create Order Table
-- *************************************
CREATE TABLE Deloitte_cs.order (
    order_id VARCHAR(255) PRIMARY KEY,
    order_date DATE,
    ship_mode VARCHAR(255),
    customer_id INTEGER REFERENCES Deloitte_cs.customer(customer_id)
);

-- Create OrderDetail Table
-- *************************************
CREATE TABLE Deloitte_cs.order_detail (
    row_id SERIAL PRIMARY KEY,
    order_id VARCHAR(255) REFERENCES Deloitte_cs.order(order_id),
    product_id INTEGER REFERENCES Deloitte_cs.product(product_id),
    sales NUMERIC,
    quantity INTEGER,
    discount NUMERIC,
    profit NUMERIC
);

-- Create Shipment Table
-- *************************************
CREATE TABLE Deloitte_cs.shipment (
    shipment_id SERIAL PRIMARY KEY,
    order_id VARCHAR(255) REFERENCES Deloitte_cs.order(order_id),
    shipment_dt TIMESTAMP,
    shipment_mode VARCHAR(255)
);


-- Product Category 
-- If there was an inventory and price list available, this would make sense. Skipping for now. 

-- CREATE TABLE Deloitte_cs.P_CAT(
--     CAT_ID varchar(5),
--     CAT_NAME varchar(50)
-- );

-- CREATE TABLE Deloitte_cs.Sub_Cat(
--     S_CAT_ID varchar(5),
--     S_CAT_NAME varchar(50)
-- );

-- CREATE TABLE Deloitte_cs.Product_List(
--     CAT_ID varchar(5) REFERENCES Deloitte_cs.P_CAT(CAT_ID),
--     S_CAT_ID varchar(5) REFERENCES Deloitte_cs.Sub_Cat(S_CAT_ID),
--     P_ID varchar(10),
--     p_Name varchar(200)
-- );

