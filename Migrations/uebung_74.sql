-- 1. Geben Sie alle Filme aus, bei denen keine Spieldauer angegeben ist.
-- 2. Geben Sie alle Filme nach Spieldauer sortiert aus. Filme, die keine Spieldauer haben, sollen in dieser Auflistung nicht erscheinen.


USE filmverleih;

SELECT * FROM filme WHERE spieldauer IS NULL;

SELECT * FROM filme WHERE spieldauer IS NOT NULL ORDER BY spieldauer;
    