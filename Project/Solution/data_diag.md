+-----------------+ +-----------------+ +---------------------+
| Customer | | Order | | Product |
+-----------------+ +-----------------+ +---------------------+
| CustomerID [PK] |<----------o| OrderID [PK] |o---------->| ProductID [PK] |
| CustomerName | | OrderDate | | Category |
| Segment | | ShipDate | | Sub-Category |
| LocationID [FK] |-----------o| ShipMode | | ProductName |
+-----------------+ +-----------------+ +---------------------+
| | | CustomerID [FK] | | OrderLine |
| | +-----------------+ +---------------------+
v | | LocationID [FK] |<----------o| OrderLineID [PK] |
+-----------------+ +-----------------+ | OrderID [FK] |
| Location | | CustomerID [FK] | | ProductID [FK] |
+-----------------+ +-----------------+ | Quantity |
| LocationID [PK]| | | | Discount |
| Country | +-----------------+ | Profit |
| State | | +---------------------+
| City | |
| PostalCode | |
| Region | |
+-----------------+ |
|
v
+-----------------+
| Sales |
+-----------------+
| SalesID [PK] |
| OrderLineID [FK]|
| Amount |
+-----------------+
