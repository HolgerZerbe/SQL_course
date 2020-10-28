CREATE TABLE flugzeugtypen (id INT NOT NULL auto_increment PRIMARY KEY, modell VARCHAR(20), hersteller VARCHAR(50), flugstunden DECIMAL(6,1),hoechstgeschwindigkeit_kmh INT, erstflug DATE, typische_sitzanzahl INT, maschinenname VARCHAR(80));
CREATE TABLE piloten (id INT NOT NULL auto_increment PRIMARY KEY, name VARCHAR(50), vorname VARCHAR(50), geburtsdatum DATE, flugstunden INT, gehalt DECIMAL(5,2));