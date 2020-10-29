-- 1. Geben Sie alle Filme nach Titel sortiert aus.
-- 2. Geben Sie alle Filme nach Spieldauer sortiert aus. Dabei soll der längste Film zuerst erscheinen und der kürzeste zuletzt.
-- 3. Geben Sie alle Filme in der Reihenfolge ihres Erscheinens aus. Falls in einem Jahr mehrere Filme vorhanden sind, so müssen diese innerhalb des Jahres noch alphabetisch sortiert werden.


USE filmverleih;

SELECT * FROM filme ORDER BY titel;
SELECT * FROM filme ORDER BY spieldauer DESC;
SELECT * FROM filme ORDER BY erscheinungsjahr, titel;
