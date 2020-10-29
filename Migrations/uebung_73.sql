-- Verwenden Sie für die beiden folgenden Änderungen ein Migrationsskript:

-- 1. Sorgen Sie dafür, dass keine Filme mehr ohne Erscheinungsjahr eingetragen werden können.
-- 2. Machen Sie die Spalten vorname und nachname der Tabelle regisseure zu Pflichtfeldern.

USE filmverleih;

ALTER TABLE filme CHANGE erscheinungsjahr erscheinungsjahr YEAR NOT NULL;

ALTER TABLE regisseure ADD nachname VARCHAR(50) NOT NULL;
ALTER TABLE regisseure ADD vorname VARCHAR(50) NOT NULL;
UPDATE regisseure SET vorname = SUBSTRING_INDEX(name, ' ', 1);
UPDATE regisseure SET nachname = SUBSTRING_INDEX(SUBSTRING_INDEX(name, ' ', 2), ' ', -1);

