CREATE DATABASE bamazon_db;
USE bamazon_db;
CREATE TABLE products(
    id PRIMARY KEY AUTO-INCREMENT,
    name VARCHAR(100) NOT NULL,
    description VARCHAR (100) NOT NULL,
    cost FLOAT (10.00) NOT NULL,
    ammount INTEGER(10) NOT NULL,
    PRIMARY KEY (id);
);

INSERT INTO products(name, description, ammount, cost)
VALUES ('toothbrush', "just a normal toothbrush", "5", "2.99");

INSERT INTO products(name, description, ammount, cost)
VALUES ("Zhwelhander", "one of the most pwoerfull swords you'll see", "1", "300");

INSERT INTO products(name, description, ammount, cost)
VALUES ("Claymore", "a big sword used by the knights in medieveal England", "3", "250");

INSERT INTO products(name, description, ammount, cost)
VALUES ("Foil", "the spanish weapon of choice during the Inquisition", "9", "195.00");

INSERT INTO products(name, description, ammount, cost)
VALUES("Rapier", "the same as the one above...but French", "20", "150.50");

INSERT INTO products(name, description, ammount, cost)
VALUES("Katana", "the best one here, fellas!", "12", "400");