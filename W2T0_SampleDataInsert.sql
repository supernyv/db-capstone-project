USE LittleLemonDB;

-- Sample data for address table
DELETE FROM address WHERE address_id > 0;
INSERT INTO address (address_id, street, city, zip, country) VALUES
(1, '123 Main St', 'Cityville', '12345', 'USA'),
(2, '456 Oak Ave', 'Townburg', '56789', 'USA'),
(3, '789 Pine Ln', 'Villageville', '10101', 'USA'),
(4, '321 Maple St', 'Hamletown', '54321', 'USA'),
(5, '555 Elm Rd', 'Suburbia', '98765', 'USA'),
(6, '777 Birch Blvd', 'Metropolis', '11111', 'USA'),
(7, '999 Cedar Dr', 'Ruralville', '99999', 'USA'),
(8, '234 Oak Pl', 'Hometown', '77777', 'USA'),
(9, '876 Pine Cir', 'Cityburg', '44444', 'USA'),
(10, '543 Maple Ct', 'Villagetown', '33333', 'USA'),
(11, '789 Oak St', 'Suburbville', '54321', 'USA'),
(12, '345 Pine Ave', 'Citytown', '98765', 'USA'),
(13, '567 Birch Ln', 'Villageburg', '10101', 'USA'),
(14, '890 Cedar Rd', 'Metrotown', '11111', 'USA'),
(15, '123 Elm Dr', 'Hometownburg', '99999', 'USA'),
(16, '456 Maple Ct', 'Cityburg', '77777', 'USA'),
(17, '678 Oak Pl', 'Townville', '44444', 'USA'),
(18, '901 Pine Cir', 'Hamletburg', '33333', 'USA'),
(19, '234 Birch Blvd', 'Villageville', '66666', 'USA'),
(20, '567 Cedar Dr', 'Suburbtown', '22222', 'USA');

-- Sample data for customer table
DELETE FROM customer WHERE customer_id > 0;
INSERT INTO customer (customer_id, first_name, last_name, telephone, email, address_id) VALUES
(1, 'John', 'Doe', '123-456-7890', 'john.doe@email.com', 1),
(2, 'Jane', 'Smith', '987-654-3210', 'jane.smith@email.com', 2),
(3, 'Mike', 'Johnson', '555-123-4567', 'mike.johnson@email.com', 3),
(4, 'Emily', 'Brown', '111-222-3333', 'emily.brown@email.com', 4),
(5, 'David', 'Wilson', '777-888-9999', 'david.wilson@email.com', 5),
(6, 'Amy', 'Miller', '444-555-6666', 'amy.miller@email.com', 6),
(7, 'Chris', 'Taylor', '999-000-1111', 'chris.taylor@email.com', 7),
(8, 'Sarah', 'Anderson', '222-333-4444', 'sarah.anderson@email.com', 8),
(9, 'Robert', 'Jones', '888-999-0000', 'robert.jones@email.com', 9),
(10, 'Laura', 'Davis', '333-444-5555', 'laura.davis@email.com', 10),
(11, 'Tom', 'Johnson', '111-222-3333', 'tom.johnson@email.com', 11),
(12, 'Catherine', 'Miller', '444-555-6666', 'catherine.miller@email.com', 12),
(13, 'Daniel', 'Wilson', '777-888-9999', 'daniel.wilson@email.com', 13),
(14, 'Olivia', 'Davis', '222-333-4444', 'olivia.davis@email.com', 14),
(15, 'Ethan', 'Anderson', '888-999-0000', 'ethan.anderson@email.com', 15),
(16, 'Sophia', 'Taylor', '333-444-5555', 'sophia.taylor@email.com', 16),
(17, 'Noah', 'Brown', '999-000-1111', 'noah.brown@email.com', 17),
(18, 'Ava', 'Jones', '555-111-2222', 'ava.jones@email.com', 18),
(19, 'Liam', 'Smith', '111-222-3333', 'liam.smith@email.com', 19),
(20, 'Emma', 'Williams', '444-555-6666', 'emma.williams@email.com', 20);

-- Sample data for staff table
DELETE FROM  staff WHERE staff_id > 0;
INSERT INTO staff (staff_id, first_name, last_name, role, salary, dob, gender, phone, email, address_id) VALUES
(1, 'Michael', 'Johnson', 'Chef', 50000.00, '1990-05-15', 'Male', '123-456-7890', 'michael.johnson@email.com', 1),
(2, 'Emily', 'Smith', 'Waiter', 30000.00, '1985-08-22', 'Female', '987-654-3210', 'emily.smith@email.com', 2),
(3, 'David', 'Williams', 'Manager', 60000.00, '1982-11-10', 'Male', '555-123-4567', 'david.williams@email.com', 3),
(4, 'Amy', 'Jones', 'Chef', 52000.00, '1992-04-30', 'Female', '111-222-3333', 'amy.jones@email.com', 4),
(5, 'Chris', 'Miller', 'Waiter', 32000.00, '1988-07-18', 'Male', '777-888-9999', 'chris.miller@email.com', 5),
(6, 'Sarah', 'Brown', 'Manager', 65000.00, '1980-12-05', 'Female', '444-555-6666', 'sarah.brown@email.com', 6),
(7, 'Robert', 'Davis', 'Chef', 48000.00, '1995-02-20', 'Male', '999-000-1111', 'robert.davis@email.com', 7),
(8, 'Laura', 'Taylor', 'Waiter', 30000.00, '1987-09-14', 'Female', '222-333-4444', 'laura.taylor@email.com', 8),
(9, 'John', 'Anderson', 'Manager', 68000.00, '1978-06-25', 'Male', '888-999-0000', 'john.anderson@email.com', 9),
(10, 'Jane', 'Wilson', 'Chef', 51000.00, '1993-03-08', 'Female', '333-444-5555', 'jane.wilson@email.com', 10),
(11, 'Hannah', 'Miller', 'Chef', 52000.00, '1992-04-30', 'Female', '123-456-7890', 'hannah.miller@email.com', 11),
(12, 'Ryan', 'Taylor', 'Waiter', 32000.00, '1988-07-18', 'Male', '987-654-3210', 'ryan.taylor@email.com', 12),
(13, 'Abigail', 'Davis', 'Manager', 65000.00, '1980-12-05', 'Female', '555-123-4567', 'abigail.davis@email.com', 13),
(14, 'Ethan', 'Jones', 'Chef', 48000.00, '1995-02-20', 'Male', '111-222-3333', 'ethan.jones@email.com', 14),
(15, 'Olivia', 'Brown', 'Waiter', 30000.00, '1987-09-14', 'Female', '777-888-9999', 'olivia.brown@email.com', 15),
(16, 'Mason', 'Davis', 'Manager', 68000.00, '1978-06-25', 'Male', '444-555-6666', 'mason.davis@email.com', 16),
(17, 'Ava', 'Miller', 'Chef', 51000.00, '1993-03-08', 'Female', '999-000-1111', 'ava.miller@email.com', 17),
(18, 'Noah', 'Taylor', 'Waiter', 30000.00, '1987-09-14', 'Male', '222-333-4444', 'noah.taylor@email.com', 18),
(19, 'Emma', 'Smith', 'Manager', 60000.00, '1982-11-10', 'Female', '888-999-0000', 'emma.smith@email.com', 19),
(20, 'Liam', 'Williams', 'Chef', 51000.00, '1993-03-08', 'Male', '333-444-5555', 'liam.williams@email.com', 20);

-- Sample data for menu_items table
DELETE FROM menu_items WHERE item_id > 0;
INSERT INTO menu_items (item_id, name, type, price, producer, quantity_in_stock) VALUES
(1, 'Spaghetti Bolognese', 'Main Course', 15.99, 'Italian Pasta Co.', 50),
(2, 'Caesar Salad', 'Starter', 8.99, 'Fresh Greens Farm', 30),
(3, 'Chocolate Cake', 'Dessert', 12.99, 'Sweet Delights Bakery', 20),
(4, 'Grilled Salmon', 'Main Course', 18.99, 'Seafood Delight', 40),
(5, 'Caprese Salad', 'Starter', 9.99, 'Garden Fresh', 25),
(6, 'Cheesecake', 'Dessert', 14.99, 'Sweet Temptations', 15),
(7, 'Chicken Alfredo', 'Main Course', 17.99, 'Mamma Mia Kitchen', 35),
(8, 'Bruschetta', 'Starter', 7.99, 'Mediterranean Flavors', 28),
(9, 'Tiramisu', 'Dessert', 11.99, 'Dolce Vita Patisserie', 18),
(10, 'Beef Steak', 'Main Course', 20.99, 'Prime Cuts Butcher', 30),
(11, 'Margherita Pizza', 'Main Course', 14.99, 'Pizzeria Italia', 25),
(12, 'Greek Salad', 'Starter', 10.99, 'Mediterranean Greens', 35),
(13, 'Fruit Tart', 'Dessert', 16.99, 'Sweet Temptations', 18),
(14, 'Chicken Parmesan', 'Main Course', 19.99, 'Mamma Mia Kitchen', 30),
(15, 'Spinach Artichoke Dip', 'Starter', 12.99, 'Savory Delights', 22),
(16, 'Red Velvet Cake', 'Dessert', 18.99, 'Sweet Indulgence Bakery', 15),
(17, 'Shrimp Scampi', 'Main Course', 22.99, 'Seafood Haven', 28),
(18, 'Tomato Basil Bruschetta', 'Starter', 9.99, 'Mediterranean Flavors', 32),
(19, 'Panna Cotta', 'Dessert', 14.99, 'Dolce Vita Patisserie', 20),
(20, 'BBQ Ribs', 'Main Course', 25.99, 'Smokehouse Grill', 25);

-- Sample data for orders table
DELETE FROM orders WHERE order_id > 0;
INSERT INTO orders (order_id, order_date, total_cost, total_quantity, customer_id, staff_id, delivery_date, order_status) VALUES
(1, '2024-01-27', 75.99, 3, 1, 1, '2024-01-28', 'Delivered'),
(2, '2024-01-26', 56.97, 2, 2, 2, '2024-01-27', 'Delivered'),
(3, '2024-01-25', 139.98, 4, 3, 3, NULL, 'Processing'),
(4, '2024-01-24', 153.94, 5, 4, 4, '2024-01-25', 'Delivered'),
(5, '2024-01-23', 37.97, 2, 5, 5, '2024-01-24', 'Delivered'),
(6, '2024-01-22', 68.96, 3, 6, 6, '2024-01-23', 'Delivered'),
(7, '2024-01-21', 212.99, 4, 7, 7, NULL, 'Processing'),
(8, '2024-01-20', 45.98, 2, 8, 8, '2024-01-21', 'Delivered'),
(9, '2024-01-19', 78.99, 3, 9, 9, '2024-01-20', 'Delivered'),
(10, '2024-01-18', 98.95, 4, 10, 10, '2024-01-19', 'Delivered'),
(11, '2024-02-15', 45.99, 2, 11, 11, NULL, 'Processing'),
(12, '2024-02-14', 68.99, 3, 12, 12, '2024-02-15', 'Delivered'),
(13, '2024-02-13', 32.99, 1, 13, 13, '2024-02-14', 'Delivered'),
(14, '2024-02-12', 57.99, 4, 14, 14, NULL, 'Processing'),
(15, '2024-02-11', 49.99, 2, 15, 15, NULL, 'Processing'),
(16, '2024-02-10', 178.99, 5, 16, 16, '2024-02-11', 'Delivered'),
(17, '2024-02-09', 36.99, 1, 17, 17, NULL, 'Processing'),
(18, '2024-02-08', 64.99, 3, 18, 18, '2024-02-09', 'Delivered'),
(19, '2024-02-07', 42.99, 2, 19, 19, NULL, 'Processing'),
(20, '2024-02-06', 55.99, 4, 20, 20, NULL, 'Processing');

-- Sample data for menu table
DELETE FROM menu WHERE menu_id > 0;
INSERT INTO menu (menu_id, menu_name, cuisine, starter_item_id, course_item_id, dessert_item_id, price) VALUES
(1, 'Italian Feast', 'Italian', 2, 1, 3, '35.99'),
(2, 'Seafood Delight', 'Seafood', 8, 4, 6, '40.99'),
(3, 'Mediterranean Delicacies', 'Mediterranean', 5, 7, 9, '38.99'),
(4, 'Steakhouse Special', 'American', 8, 10, 6, '45.99'),
(5, 'Chef''s Selection', 'Mixed', 2, 7, 3, '39.99'),
(6, 'Vegetarian Delight', 'Vegetarian', 5, 1, 9, '36.99'),
(7, 'Family Feast', 'Mixed', 2, 4, 6, '55.99'),
(8, 'Classic Combo', 'Mixed', 8, 1, 9, '42.99'),
(9, 'Healthy Choices', 'Mixed', 5, 4, 9, '38.99'),
(10, 'Sweet Indulgence', 'Dessert', NULL, NULL, 3, '15.99'),
(11, 'Sushi Delight', 'Japanese', 16, 11, 13, '48.99'),
(12, 'Mexican Fiesta', 'Mexican', 17, 14, 16, '34.99'),
(13, 'Classic Burger Combo', 'American', 20, 15, 18, '29.99'),
(14, 'Vegetable Biryani', 'Indian', 12, 19, 13, '22.99'),
(15, 'Caprese Salad', 'Italian', 18, 15, 14, '18.99'),
(16, 'Chocolate Mousse', 'Dessert', NULL, NULL, 16, '12.99'),
(17, 'Grilled Salmon', 'Seafood', 17, 11, 13, '36.99'),
(18, 'Pesto Pasta', 'Italian', 18, 15, 14, '26.99'),
(19, 'Tiramisu', 'Dessert', NULL, NULL, 19, '15.99'),
(20, 'Shrimp Tacos', 'Mexican', 17, 14, 16, '32.99');

-- Sample data for order_items table
DELETE FROM order_items WHERE order_item_id > 0;
INSERT INTO order_items (order_item_id, order_id, menu_id, quantity, discount) VALUES
(1, 1, 1, 1, 0),
(2, 1, 2, 2, 0),
(3, 1, 3, 1, 0),
(4, 2, 4, 2, 0),
(5, 2, 5, 1, 0),
(6, 3, 6, 3, 0),
(7, 3, 7, 1, 0),
(8, 3, 8, 1, 0),
(9, 4, 9, 2, 0),
(10, 4, 10, 2, 0),
(11, 11, 11, 2, 0),
(12, 12, 12, 3, 0),
(13, 13, 13, 1, 0),
(14, 14, 14, 4, 0),
(15, 15, 15, 2, 0),
(16, 16, 16, 5, 0),
(17, 17, 17, 1, 0),
(18, 18, 18, 3, 0),
(19, 19, 19, 2, 0),
(20, 20, 20, 4, 0);

-- Sample data for table restaurant_table
DELETE FROM restaurant_table WHERE table_id > 0;
INSERT INTO restaurant_table (table_id, table_length, table_with, table_height, table_capacity, table_location) VALUES
(1, 4.5, 2.5, 2, 4, 'Corner'),
(2, 3.5, 3, 2, 6, 'Center'),
(3, 5, 2, 2, 8, 'Window'),
(4, 4, 3, 2, 5, 'Near Kitchen'),
(5, 3, 2.5, 2, 4, 'Entrance'),
(6, 5.5, 3.5, 2, 6, 'Balcony'),
(7, 4, 3, 2, 5, 'Near Bar'),
(8, 3.5, 2, 2, 4, 'Center'),
(9, 4.5, 3, 2, 6, 'Corner'),
(10, 5, 2.5, 2, 8, 'Near Restrooms'),
(11, 3.8, 2.2, 2, 4, 'Near Window'),
(12, 5.2, 3.2, 2, 6, 'Center'),
(13, 4.5, 2.8, 2, 8, 'Balcony'),
(14, 4, 3, 2, 5, 'Near Restrooms'),
(15, 6, 3.5, 2, 6, 'Corner'),
(16, 4.3, 2.5, 2, 4, 'Near Bar'),
(17, 3.6, 2, 2, 4, 'Center'),
(18, 5, 2.7, 2, 6, 'Near Kitchen'),
(19, 4.8, 3.3, 2, 8, 'Window'),
(20, 3.5, 2.2, 2, 4, 'Entrance');

-- Sample data for booking table
DELETE FROM booking WHERE booking_id > 0;
INSERT INTO booking (booking_id, booking_date, table_id, quantity, time_slot, customer_id, staff_id) VALUES
(1, '2024-02-01', 1, 4, '19:00:00', 1, 1),
(2, '2024-02-02', 2, 6, '20:00:00', 2, 2),
(3, '2024-02-03', 3, 8, '18:30:00', 3, 3),
(4, '2024-02-04', 4, 5, '19:30:00', 4, 4),
(5, '2024-02-05', 5, 4, '21:00:00', 5, 5),
(6, '2024-02-06', 6, 6, '19:00:00', 6, 6),
(7, '2024-02-07', 7, 5, '20:30:00', 7, 7),
(8, '2024-02-08', 8, 4, '18:00:00', 8, 8),
(9, '2024-02-09', 9, 6, '20:00:00', 9, 9),
(10, '2024-02-10', 10, 8, '19:30:00', 10, 10),
(11, '2024-03-01', 11, 4, '19:30:00', 11, 11),
(12, '2024-03-02', 12, 6, '20:00:00', 12, 12),
(13, '2024-03-03', 13, 8, '18:30:00', 13, 13),
(14, '2024-03-04', 14, 5, '19:30:00', 14, 14),
(15, '2024-03-05', 15, 4, '21:00:00', 15, 15),
(16, '2024-03-06', 16, 6, '19:00:00', 16, 16),
(17, '2024-03-07', 17, 5, '20:30:00', 17, 17),
(18, '2024-03-08', 18, 4, '18:00:00', 18, 18),
(19, '2024-03-09', 19, 6, '20:00:00', 19, 19),
(20, '2024-03-10', 20, 8, '19:30:00', 20, 20);
