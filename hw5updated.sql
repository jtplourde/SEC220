CREATE DATABASE store;
USE store;

CREATE TABLE customers (
id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
        PRIMARY KEY (id)
);

CREATE TABLE warehouse (
id int NOT NULL UNIQUE AUTO_INCREMENT,
    location varchar(20),
    PRIMARY KEY (id)
);

CREATE TABLE orders (
id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    warehouseId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers(id)
);

CREATE TABLE cust_ord_association (
id int NOT NULL UNIQUE AUTO_INCREMENT,
    orders_id int NOT NULL,
    warehouse_id int NOT NULL,
    PRIMARY KEY (id)
);



INSERT INTO customers (firstname, lastname) VALUES ('Jim', 'Halpert');
INSERT INTO customers (firstname, lastname) VALUES ('Michael', 'Scott');
INSERT INTO customers (firstname, lastname) VALUES ('Dwight', 'Shrute');
INSERT INTO warehouse (location) VALUES ('PA');
INSERT INTO warehouse (location) VALUES ('CT');
INSERT INTO warehouse (location) VALUES ('MA');
INSERT INTO orders (product, cost, customerId, warehouseId) VALUES ('Paper Ream', '100', 1, 1);
INSERT INTO orders (product, cost, customerId, warehouseId) VALUES ('Pens', '5', 1, 2);
INSERT INTO orders (product, cost, customerId, warehouseId) VALUES ('Paper Ream', '100', 3, 1);
INSERT INTO orders (product, cost, customerId, warehouseId) VALUES ('Paper Ream', '100', 1, 1);
INSERT INTO orders (product, cost, customerId, warehouseId) VALUES ('Paper Ream', '100', 3, 1);
INSERT INTO orders (product, cost, customerId, warehouseId) VALUES ('whoopee cushion', '5', 2, 3);
INSERT INTO cust_ord_association (warehouse_id, orders_id) VALUES (1, 1);
INSERT INTO cust_ord_association (warehouse_id, orders_id) VALUES (2, 2);
INSERT INTO cust_ord_association (warehouse_id, orders_id) VALUES (1, 3);
INSERT INTO cust_ord_association (warehouse_id, orders_id) VALUES (1, 4);
INSERT INTO cust_ord_association (warehouse_id, orders_id) VALUES (1, 5);
INSERT INTO cust_ord_association (warehouse_id, orders_id) VALUES (3, 6);

use store;
SELECT * FROM customers;
SELECT * FROM warehouse;
SELECT * FROM orders;
SELECT * FROM cust_ord_association;

SELECT firstname FROM store.customers;
SELECT lastname FROM store.customers;
SELECT product FROM store.orders;
SELECT product FROM store.orders WHERE product = 'Paper Ream';
SELECT location FROM store.warehouse WHERE warehouse.id = '1';
SELECT location FROM store.warehouse WHERE warehouse.id IN (1,2);
SELECT product, cost FROM orders ORDER BY cost;

