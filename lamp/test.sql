create database test;
GRANT ALL ON test.* TO test@localhost IDENTIFIED BY 'testisalasana';
USE testi;
CREATE TABLE testi (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(1024), price FLOAT);
INSERT INTO hats(name, price) VALUES ("Ninja hood", 104.3);
INSERT INTO hats(name, price) VALUES ("Space helmet", 10400.3);
