USE partnervermittlung;

ALTER TABLE personen CHANGE name name VARCHAR(50) NOT NULL;
ALTER TABLE personen CHANGE vorname vorname VARCHAR(50) NOT NULL;
ALTER TABLE personen CHANGE geschlecht geschlecht VARCHAR(1) NOT NULL;
ALTER TABLE personen CHANGE sexuelle_orientierung sexuelle_orientierung VARCHAR(20) NOT NULL;
ALTER TABLE personen CHANGE solvent solvent BOOLEAN NOT NULL;