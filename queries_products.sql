-- Comments in SQL Start with dash-dash --

--Q1
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', '44.
00', 'false');

--Q2
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', '25.99', 'true');

--Q3
INSERT INTO products (name, price, can_be_returned) VALUES ('table', '124.00', 'false');

--Q4
SELECT * FROM products;

--Q5
SELECT name FROM products;

--Q6
SELECT name, price FROM products;

--Q7
INSERT INTO products (name, price, can_be_returned) VALUES ('Sandwich', '12.00', 'false');

--Q8
SELECT * FROM products WHERE can_be_returned = true;

--Q9
SELECT * FROM products WHERE price < 44.00;

--Q10
SELECT * FROM products WHERE price < 99.00 AND price > 22.50;

--Q11
UPDATE products SET price = price - 20;

--Q12
DELETE FROM products WHERE price < 25;

--Q13
UPDATE products SET price = price + 20;

--Q14
UPDATE products SET can_be_returned = true;