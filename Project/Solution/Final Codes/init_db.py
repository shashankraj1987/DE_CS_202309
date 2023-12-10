from sqlalchemy import create_engine, Column, Integer, String, Date, ForeignKey, types
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy.orm import sessionmaker

# Define the database connection URL. Change this as per the requirement. 
DB_URL = "postgresql://postgres:password@localhost:5432/project"

# Create a session to interact with the database
engine = create_engine(DB_URL, echo=True)
Session = sessionmaker(bind=engine)
session = Session()
Base = declarative_base()

# Create all the tables.
class Customer(Base):
    __tablename__ = 'customers'
    customer_id = Column(String, primary_key=True)
    customer_name = Column(String)
    segment = Column(String)
    country = Column(String)
    region = Column(String)
    orders = relationship("Order", back_populates="customer")

class Product(Base):
    __tablename__ = 'products'
    product_id = Column(String, primary_key=True)
    category = Column(String)
    sub_category = Column(String)
    product_name = Column(String)
    order_details = relationship("OrderDetail", back_populates="product")

class Order(Base):
    __tablename__ = 'orders'
    order_id = Column(String, primary_key=True)
    order_date = Column(Date)
    ship_date = Column(Date)
    ship_mode = Column(String)
    customer_id = Column(String, ForeignKey('customers.customer_id'))
    customer = relationship("Customer", back_populates="orders")
    order_details = relationship("OrderDetail", back_populates="order")

class OrderDetail(Base):
    __tablename__ = 'order_details'
    order_id = Column(String, ForeignKey('orders.order_id'), primary_key=True)
    product_id = Column(String, ForeignKey('products.product_id'), primary_key=True)
    quantity = Column(Integer)
    discount = Column(types.DECIMAL(3, 2))
    sales = Column(types.DECIMAL(10, 2))
    profit = Column(types.DECIMAL(10, 2))
    order = relationship("Order", back_populates="order_details")
    product = relationship("Product", back_populates="order_details")

# Create all tables
Base.metadata.create_all(engine)

# Commit changes and close the session
session.commit()
session.close()