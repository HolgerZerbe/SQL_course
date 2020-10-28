-- Erstellt die Tabelle personen und ändert die Länge des Type of Key haarfarbe:

CREATE TABLE personen (id INT NOT NULL auto_increment PRIMARY KEY, name VARCHAR(50), vorname VARCHAR(50), geschlecht VARCHAR(1), haarfarbe VARCHAR(2), groesse_in_cm INT, gewicht_in_kilo INT, geburtsdatum YEAR, sexuelle_orientierung VARCHAR(20), solvent BOOLEAN);
ALTER TABLE personen CHANGE haarfarbe haarfarbe VARCHAR(20);
