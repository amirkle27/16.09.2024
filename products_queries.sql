INSERT INTO category (name) VALUES
('Beverages'),
('Snacks'),
('Dairy'),
('Fruits'),
('Vegetables');

INSERT INTO products (name, price, category_id) VALUES
('Orange Juice', 5.99, 1),
('Chocolate Bar', 2.50, 2),
('Milk', 3.20, 3),
('Apple', 1.50, 4),
('Carrot', 0.99, 5);

INSERT INTO nutritions (product_id, name, calories, fats, sugar) VALUES
(1, 'Orange Juice', 120, 0.2, 20),
(2, 'Chocolate Bar', 220, 12, 18),
(3, 'Milk', 150, 8, 12),
(4, 'Apple', 95, 0.3, 19),
(5, 'Carrot', 41, 0.1, 5);

INSERT INTO orders (date_time, address, customer_name, customer_ph, total_price) VALUES
('2024-09-17 10:30', '123 Main St', 'John Doe', '555-1234', 25.67),
('2024-09-17 11:45', '456 Oak St', 'Jane Smith', '555-5678', 15.30),
('2024-09-17 12:15', '789 Pine St', 'Emily Davis', '555-8765', 9.99),
('2024-09-17 13:00', '321 Elm St', 'Michael Johnson', '555-4321', 20.10),
('2024-09-17 13:30', '654 Maple St', 'Sarah Wilson', '555-6789', 30.55);

INSERT INTO products_orders (order_id, product_id, amount) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(3, 4, 3),
(4, 5, 5),
(5, 1, 1),
(5, 3, 2),
(5, 4, 2);
