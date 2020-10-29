USE seminarverwaltung;

CREATE TABLE seminartermine (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    beginn DATE, ende DATE, raum VARCHAR(30),
    seminar_id INTEGER );
