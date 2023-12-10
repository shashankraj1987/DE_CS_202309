-- Schema
CREATE SCHEMA deloitte_cs
    AUTHORIZATION postgres;


-- Customer Table
CREATE TABLE deloitte_cs.Customer (
    CustomerID VARCHAR(10) PRIMARY KEY,
    CustomerName VARCHAR(255),
    Segment VARCHAR(255),
    LocationID VARCHAR(10),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

-- Location Table
CREATE TABLE deloitte_cs.Location (
    LocationID VARCHAR(10) PRIMARY KEY,
    Country VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    PostalCode VARCHAR(20),
    Region VARCHAR(255)
);

-- Customer Purchase Table
CREATE TABLE deloitte_cs.CustomerPurchase (
    OrderID VARCHAR(20) PRIMARY KEY,
    CustomerID VARCHAR(10),
    ProductID VARCHAR(20),
    LocationID VARCHAR(10),
    Sales DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(4, 2),
    Profit DECIMAL(10, 2),
    ShipmentID VARCHAR(15),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES ProductTbl(ProductID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID),
    FOREIGN KEY (ShipmentID) REFERENCES ShipmentID(ShipmentID)
);

-- Product Table
CREATE TABLE ProductTbl (
    ProductID VARCHAR(20) PRIMARY KEY,
    Category VARCHAR(255),
    SubCategory VARCHAR(255),
    ProductName VARCHAR(255)
);

-- Prod Inventory Table
CREATE TABLE ProdInventory (
    Date DATE,
    Category VARCHAR(255),
    SubCategory VARCHAR(255),
    Quantity INT,
    ProductID VARCHAR(20),
    PRIMARY KEY (ProductID, Date),
    FOREIGN KEY (ProductID) REFERENCES ProductTbl(ProductID)
);

-- Shipment ID Table
CREATE TABLE ShipmentID (
    ShipmentID VARCHAR(15) PRIMARY KEY,
    ShipDate DATE,
    ShipMode VARCHAR(255)
);


