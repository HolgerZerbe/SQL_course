USE filmverleih;

ALTER TABLE filme ADD COLUMN regisseur_id INT, ADD COLUMN preiskategorie_id INT;;
CREATE TABLE preiskategorien (id INT NOT NULL auto_increment PRIMARY KEY, name VARCHAR(20), preis DECIMAL(2, 2));