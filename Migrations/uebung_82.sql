-- Hinweis: Für die folgende Übung können Sie die Beispieldaten aus dem Übungsmaterial importieren.

-- 1. Geben Sie Filme mit hinterlegten Schauspielern aus.
-- 2. Geben Sie alle Filme aus, in denen Christian Bale mitspielt.

USE filmverleih;

SELECT filme.titel, concat(personen.vorname, " ", personen.name) AS schauspieler FROM filme JOIN spielt ON  filme.id = spielt.film_id JOIN personen ON personen.id = spielt.schauspieler_id;

SELECT filme.titel, concat(personen.vorname, " ", personen.name) AS schauspieler FROM filme JOIN spielt ON  filme.id = spielt.film_id JOIN personen ON personen.id = spielt.schauspieler_id WHERE personen.name = 'bale' AND personen.vorname = 'christian';