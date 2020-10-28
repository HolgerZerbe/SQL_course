-- CREATE DATABASE login_db;
USE login_db;


CREATE TABLE benutzer (id INT auto_increment PRIMARY KEY, login VARCHAR(30), password VARCHAR(30));

INSERT INTO benutzer (login, password) VALUES ('mhuana', 'geheim');
INSERT INTO benutzer (login, password) VALUES ('maxem', 'handy');
INSERT INTO benutzer (login, password) VALUES ('dagobert', 'geldspeicher');