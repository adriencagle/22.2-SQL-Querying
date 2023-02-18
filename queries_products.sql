-- Comments in SQL Start with dash-dash --
INSERT INTO products (name, price, can_be_returned)
VALUES ('chair', 44.00, 'f');
-- makes a chair row

INSERT INTO products (name, price, can_be_returned)
VALUES ('stool', 25.99, 't');
--Makes a stool row

INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, 'f');
--makes a table row

SELECT * FROM products;
--Shows the table

SELECT name FROM products;
--Shows names fromt the table

SELECT name, price FROM products;
--Shows names and prices from the table

INSERT INTO products (name, price, can_be_returned) VALUES ('myProduct',50 , 't');
--Creates a myProduct row

SELECT * FROM products WHERE can_be_returned = 't';
--Shows products that can be returned

SELECT * FROM products WHERE price < 44;
--Shows products with prices lower than 44

SELECT * FROM products WHERE price > 22.5 AND price < 44;
--shows products between 22.5 and 44

UPDATE products SET price =price -20;
--reduces all prices by 20

DELETE FROM products WHERE price < 25;
--deletes products with prices lower than 25

UPDATE products SET price = price + 20;
--Raises the prices by 20

UPDATE products SET can_be_returned = 't';
--Updates the whole table to be returned