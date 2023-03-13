CREATE DATABASE gescom
USE gescom;

CREATE TABLE products (
    pro_id int NOT null AUTO_INCREMENT ,
    pro_ref varchar(10) NOT null,
    pro_name varchar(200) NOT null,
    pro_desc text(1000) NOT null,
    pro_price decimal(6.2) NOT null,
    pro_stock SMALLINT(4) DEFAULT null,
    pro_color varchar(30)  DEFAULT null,
    pro_picture varchar(40) DEFAULT null,
    pro_add date NOT null ,
    pro_update_date DATETIME NOT null ,
    pro_publish TINYINT(1) NOT null,
    cat_id int NOT null,
    sup_id int NOT null,
    PRIMARY  KEY (pro_id) 
);

CREATE TABLE orders(
    ord_id int NOT null,
    ord_order_date DATE NOT null AUTO_INCREMENT,
    ord_ship_date DATE DEFAULT null,
    ord_bill_date DATE DEFAULT null,
    ord_reception_date DATE,
    ord_status varchar(25) NOT null,
    cus_id INT NOT null,
    PRIMARY KEY(ord_id)
);

CREATE TABLE details(
    det_id int NOT null,
    det_price DECIMAL(6.2) NOT null,
    det_quantity INT(5) NOT null,
    pro_id INT NOT null,
    ord_id int NOT null,
    PRIMARY KEY (det_id)
);

CREATE TABLE suppliers(
    sup_id INT NOT null,
    sup_name VARCHAR(50) NOT null,
    sup_city VARCHAR(50) NOT null,
    sup_adress VARCHAR(150) NOT null,
    sup_mail VARCHAR(75) DEFAULT null,
    sup_phone INT(10) DEFAULT null,
    PRIMARY KEY (sup_id)
);
CREATE TABLE customers(
    cus_id  INT NOT null,
    cus_lastname VARCHAR(50) NOT null,
    cus_firstname VARCHAR(50) NOT null,
    cus_adress VARCHAR(150) NOT null,
    cus_zipcode VARCHAR(50) NOT null,
    cus_city VARCHAR(50) NOT null,
    cus_mail VARCHAR(75) DEFAULT null,
    cus_phone INT(10) DEFAULT null,
    PRIMARY KEY (cus_id)
);

CREATE TABLE catégories(
    cat_id INT,
    cat_name VARCHAR(200),
    cat_parent_id INT,
    PRIMARY KEY (cat_id)
);