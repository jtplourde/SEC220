CREATE DATABASE store;
USE store;
CREATE TABLE customers (
id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
        PRIMARY KEY (id)
);
CREATE TABLE orders (
id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers(id)
);
INSERT INTO customers (firstname, lastname) VALUES ('Jim', 'Halpert');
INSERT INTO customers (firstname, lastname) VALUES ('Michael', 'Scott');
INSERT INTO customers (firstname, lastname) VALUES ('Dwight', 'Shrute');
INSERT INTO orders (product, cost, customerId) VALUES ('Paper Ream', '100', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('Pens', '5', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('Paper Ream', '100', 3);
INSERT INTO orders (product, cost, customerId) VALUES ('Paper Ream', '100', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('Paper Ream', '100', 3);
INSERT INTO orders (product, cost, customerId) VALUES ('whoopee cushion', '5', 2);
SELECT * from customers;
SELECT * from orders;


