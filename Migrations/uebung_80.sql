-- Hinweis: Für die folgende Übung können Sie die Beispieldaten aus dem Übungsmaterial importieren.

-- DROP DATABASE filmverleih;

-- CREATE DATABASE filmverleih;

-- mysql -u root filmverleih < filmverleih.sql

-- 1. Geben Sie alle Filme mit ihrem Regisseur aus.
-- 2. Geben Sie die Titel aller Filme aus, bei denen Peter Jackson Regie geführt hat.


USE filmverleih;

SELECT filme.titel, concat(regisseure.vorname, ' ', regisseure.name) AS regisseur FROM filme JOIN regisseure ON filme.regisseur_id = regisseure.id;

SELECT filme.titel, concat(regisseure.vorname, ' ', regisseure.name) AS regisseur FROM filme JOIN regisseure ON filme.regisseur_id = regisseure.id WHERE regisseure.name = 'jackson' AND regisseure.vorname = 'peter';

