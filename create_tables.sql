
CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    CONSTRAINT chk_email_format CHECK (email LIKE '%@%.%')
);


CREATE TABLE Supplier (
supplier_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
contact_info VARCHAR(255)
);


CREATE TABLE Staff (
staff_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
position VARCHAR(30) CHECK (position IN ('Manager', 'Administrator', 'Assistant')),
salary DECIMAL(10,2) CHECK (salary >= 0),
start_date DATE NOT NULL,
branch_id INT NOT NULL,
line_manager_id INT,
FOREIGN KEY (branch_id) REFERENCES Branch(branch_id),
FOREIGN KEY (line_manager_id) REFERENCES Staff(staff_id)
);


CREATE TABLE Member (
member_id INT PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
address VARCHAR(255),
join_date DATE NOT NULL,
branch_id INT NOT NULL,
FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

CREATE TABLE FurnitureType (
type_id INT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
category VARCHAR(50),
colour VARCHAR(30),
size VARCHAR(30),
supplier_id INT NOT NULL,
purchase_price DECIMAL(10,2) CHECK (purchase_price >= 0),
rental_price DECIMAL(10,2) CHECK (rental_price >= 0),
FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);

CREATE TABLE Furniture (
furniture_id INT PRIMARY KEY,
type_id INT NOT NULL,
branch_id INT NOT NULL,
purchase_date DATE,
status VARCHAR(20) CHECK (status IN ('Available', 'Rented', 'Damaged', 'Sold')),
FOREIGN KEY (type_id) REFERENCES FurnitureType(type_id),
FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

CREATE TABLE Rental (
rental_id INT PRIMARY KEY,
member_id INT NOT NULL,
furniture_id INT NOT NULL,
rental_date DATE NOT NULL,
return_date DATE,
rental_price DECIMAL(10,2) CHECK (rental_price >= 0),
FOREIGN KEY (member_id) REFERENCES Member(member_id),
FOREIGN KEY (furniture_id) REFERENCES Furniture(furniture_id),
CONSTRAINT chk_return_date CHECK (return_date IS NULL OR return_date >= rental_date)
);


CREATE TABLE FurnitureOrder (
order_id INT PRIMARY KEY,
supplier_id INT NOT NULL,
type_id INT NOT NULL,
order_date DATE NOT NULL,
quantity INT CHECK (quantity > 0),
status VARCHAR(20) CHECK (status IN ('Pending', 'Delivered', 'Cancelled')),
FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
FOREIGN KEY (type_id) REFERENCES FurnitureType(type_id)
);




