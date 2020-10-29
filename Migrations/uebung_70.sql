-- Entwickeln Sie ein Migrationsskript für die Tabelle regisseure. Die Spalte vorname entfällt. Stattdessen soll der jeweilige vorname mit bei name gespeichert werden. Achten Sie darauf, dass die Migration verlustfrei geschieht.


USE filmverleih;

UPDATE regisseure SET name = concat(vorname, " ", name);
ALTER TABLE regisseure DROP vorname;