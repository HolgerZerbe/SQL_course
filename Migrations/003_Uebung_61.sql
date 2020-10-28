USE filmverleih;

SELECT * FROM filme;
SELECT titel, erscheinungsjahr FROM filme;
SELECT DISTINCT erscheinungsjahr FROM filme;
SELECT * FROM filme WHERE erscheinungsjahr >= '2002';
SELECT * FROM filme WHERE titel LIKE '%Ring%';
SELECT * FROM filme WHERE titel LIKE '%Ring%' AND erscheinungsjahr >= '2002';
SELECT * FROM filme WHERE titel LIKE '%Ring%' OR kurzbeschreibung LIKE  '%Ring%';
