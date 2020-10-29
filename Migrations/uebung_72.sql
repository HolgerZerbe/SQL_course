-- 1. Geben Sie zwei Filme aus, die nach dem Jahr 2000 erschienen sind.
-- 2. Geben Sie die nächsten zwei Filme aus, die nach dem Jahr 2000 erschienen sind.


USE filmverleih;

SELECT * from filme WHERE erscheinungsjahr > '2000' LIMIT 2;
SELECT * from filme WHERE erscheinungsjahr > '2000' LIMIT 2 , 2;

-- hier weiter sortiert nach erscheinungsjahr:

SELECT * from filme WHERE erscheinungsjahr > '2000' ORDER BY erscheinungsjahr LIMIT 2;
SELECT * from filme WHERE erscheinungsjahr > '2000' ORDER BY erscheinungsjahr LIMIT 2 , 2;