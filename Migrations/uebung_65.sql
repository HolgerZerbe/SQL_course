USE filmverleih;

SELECT titel, CONCAT(SUBSTRING(kurzbeschreibung, 1, 20), ' ...') as beschreibung from filme;