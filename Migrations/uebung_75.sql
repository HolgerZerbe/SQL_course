USE fluggesellschaft;

ALTER TABLE flugzeugtypen CHANGE modell modell VARCHAR(20) NOT NULL;
ALTER TABLE flugzeugtypen CHANGE hersteller hersteller VARCHAR(50) NOT NULL; 
ALTER TABLE flugzeugtypen CHANGE maschinenname maschinenname VARCHAR(80) NOT NULL;
