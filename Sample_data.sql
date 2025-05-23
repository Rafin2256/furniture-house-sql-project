INSERT INTO Branch (branch_id, address, phone, email)
VALUES (1, 'Castle St, Eccleshall', '01785 850300', 'eccleshall@furniturehouse.co.uk');
INSERT INTO Branch (branch_id, address, phone, email)
VALUES (2, '22 King St, Stafford', '01785 123456', 'stafford@furniturehouse.co.uk');
COMMIT;





INSERT INTO Supplier (supplier_id, name, contact_info) VALUES (1, 'IKEA', 'ikea@suppliers.com');
INSERT INTO Supplier (supplier_id, name, contact_info) VALUES (2, 'Habitat', 'habitat@suppliers.com');
commit;
select * from supplier


  

INSERT INTO FurnitureType (type_id, title, category, colour, furniture_size, supplier_id, purchase_price, rental_price) 
VALUES (101, 'Malm Bed', 'Bedroom', 'White', 'King', 1, 150.00, 40.00);

INSERT INTO FurnitureType (type_id, title, category, colour, furniture_size, supplier_id, purchase_price, rental_price) 
VALUES (102, 'Kristopher Bed', 'Bedroom', 'Oak', 'Double', 2, 120.00, 30.00);

INSERT INTO FurnitureType (type_id, title, category, colour, furniture_size, supplier_id, purchase_price, rental_price) 
VALUES (103, 'Billy Bookcase', 'Living Room', 'Black', 'Tall', 1, 60.00, 15.00);
commit;




INSERT INTO Furniture (furniture_id, type_id, branch_id, purchase_date, status) 
VALUES (1001, 101, 1, DATE '2022-07-01', 'Available');

INSERT INTO Furniture (furniture_id, type_id, branch_id, purchase_date, status) 
VALUES (1002, 102, 1, DATE '2022-07-02', 'Available');

INSERT INTO Furniture (furniture_id, type_id, branch_id, purchase_date, status) 
VALUES (1003, 103, 2, DATE '2022-07-03', 'Rented');
commit;





INSERT INTO Member (member_id, full_name, address, join_date, branch_id) 
VALUES (201, 'John Green', '16 Brockley Sq, Hanley, ST1 5LY', DATE '2023-01-12', 1);

INSERT INTO Member (member_id, full_name, address, join_date, branch_id) 
VALUES (202, 'Peter Brown', '127 Pea Lane, Hanley, ST1 4JH', DATE '2023-02-20', 1);

INSERT INTO Member (member_id, full_name, address, join_date, branch_id) 
VALUES (203, 'Ron Davis', '83 York Street, Hanley, ST1 5ET', DATE '2023-03-15', 2);

commit;






INSERT INTO Staff (staff_id, first_name, last_name, position, salary, start_date, branch_id, line_manager_id) 
VALUES (301, 'John', 'Green', 'Manager', 35000.00, DATE '2021-06-01', 1, NULL);
INSERT INTO Staff (staff_id, first_name, last_name, position, salary, start_date, branch_id, line_manager_id) 
VALUES (302, 'Clare', 'Smith', 'Administrator', 28000.00, DATE '2022-01-15', 1, 301);
INSERT INTO Staff (staff_id, first_name, last_name, position, salary, start_date, branch_id, line_manager_id) 
VALUES (303, 'Chris', 'Logan', 'Assistant', 20000.00, DATE '2022-06-10', 1, 302);
INSERT INTO Staff (staff_id, first_name, last_name, position, salary, start_date, branch_id, line_manager_id) 
VALUES (304, 'Anne', 'Walters', 'Assistant', 21000.00, DATE '2022-08-20', 2, NULL);
commit



INSERT INTO Rental (rental_id, member_id, furniture_id, rental_date, return_date, rental_price) 
VALUES (401, 201, 1001, DATE '2023-07-16', DATE '2023-08-16', 40.00);

INSERT INTO Rental (rental_id, member_id, furniture_id, rental_date, return_date, rental_price) 
VALUES (402, 202, 1002, DATE '2023-07-19', DATE '2023-08-19', 30.00);

INSERT INTO Rental (rental_id, member_id, furniture_id, rental_date, return_date, rental_price) 
VALUES (403, 203, 1003, DATE '2023-07-20', NULL, 15.00);




INSERT INTO FurnitureOrder (order_id, supplier_id, type_id, order_date, quantity, status) 
VALUES (501, 1, 101, DATE '2023-06-10', 10, 'Delivered');

INSERT INTO FurnitureOrder (order_id, supplier_id, type_id, order_date, quantity, status) 
VALUES (502, 2, 102, DATE '2023-06-15', 5, 'Pending');


commit;






