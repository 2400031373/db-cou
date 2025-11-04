-- Create the database
CREATE DATABASE IF NOT EXISTS little_lemon;
USE little_lemon;

-- Customers Table
CREATE TABLE Customers (
  CustomerID INT AUTO_INCREMENT PRIMARY KEY,
  FullName VARCHAR(100),
  Phone VARCHAR(20),
  Email VARCHAR(100)
);

-- MenuItems Table
CREATE TABLE MenuItems (
  MenuItemID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100),
  Type VARCHAR(50),
  Price DECIMAL(10,2)
);

-- Bookings Table
CREATE TABLE Bookings (
  BookingID INT AUTO_INCREMENT PRIMARY KEY,
  CustomerID INT,
  BookingDate DATE,
  TableNo INT,
  MenuItemID INT,
  Quantity INT,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (MenuItemID) REFERENCES MenuItems(MenuItemID)
);

-- Staff Table
CREATE TABLE Staff (
  StaffID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100),
  Role VARCHAR(50),
  Salary DECIMAL(10,2)
);

-- Insert Sample Data
INSERT INTO Customers (FullName, Phone, Email) VALUES
('John Doe', '9876543210', 'john@example.com'),
('Alice Smith', '9123456789', 'alice@example.com'),
('Rohit Kumar', '9998887776', 'rohit@example.com');

INSERT INTO MenuItems (Name, Type, Price) VALUES
('Pasta Alfredo', 'Main Course', 350.00),
('Veg Pizza', 'Main Course', 400.00),
('Lemonade', 'Beverage', 120.00),
('Cheesecake', 'Dessert', 250.00);

INSERT INTO Staff (Name, Role, Salary) VALUES
('Michael', 'Manager', 45000.00),
('Sara', 'Chef', 35000.00),
('Ravi', 'Waiter', 18000.00);

INSERT INTO Bookings (CustomerID, BookingDate, TableNo, MenuItemID, Quantity) VALUES
(1, '2025-11-04', 5, 1, 2),
(2, '2025-11-05', 2, 3, 3),
(3, '2025-11-06', 4, 2, 1);
