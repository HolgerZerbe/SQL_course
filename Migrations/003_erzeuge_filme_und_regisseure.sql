CREATE TABLE filme (id INT NOT NULL auto_increment PRIMARY KEY, 
                    titel VARCHAR(150) UNIQUE KEY,
                    spieldauer INT,
                    erscheinungsjahr YEAR,
                    kurzbeschreibung TEXT,
                    genre VARCHAR(50));

CREATE TABLE regisseure (id INT NOT NULL auto_increment PRIMARY KEY,
                        name VARCHAR(50),
                        vorname VARCHAR(50),
                        geburtsdatum DATE);
                        