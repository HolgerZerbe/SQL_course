USE filmverleih;

SELECT name, YEAR(now())-YEAR(geburtsdatum) AS lebensalter from regisseure;
