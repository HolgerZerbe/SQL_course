USE fluggesellschaft;

ALTER TABLE flugzeugtypen CHANGE modell modell VARCHAR(20) NOT NULL;
ALTER TABLE flugzeugtypen CHANGE hersteller hersteller VARCHAR(50) NOT NULL; 
ALTER TABLE flugzeugtypen CHANGE maschinenname maschinenname VARCHAR(80) NOT NULL;

ALTER TABLE piloten CHANGE name nachname VARCHAR(50) NOT NULL;
ALTER TABLE piloten CHANGE vorname vorname VARCHAR(50) NOT NULL;
ALTER TABLE piloten CHANGE geburtsdatum geburtsdatum DATE NOT NULL;
ALTER TABLE piloten CHANGE flugstunden flugstunden INT NOT NULL;