USE filmverleih;

SELECT COUNT(id) FROM filme;
SELECT MIN(spieldauer) AS geringste_spieldauer_in_2002 FROM filme WHERE erscheinungsjahr = '2002';
SELECT MAX(LENGTH(kurzbeschreibung)) AS laengste_Beschreibung FROM filme;
SELECT YEAR(NOW())-MIN(erscheinungsjahr) AS alter_aeltester_film fROM filme; 
SELECT AVG(spieldauer) AS durchschnittsdauer_scifi FROM filme WHERE genre = 'scifi';
SELECT COUNT(DISTINCT(genre)) AS anzahl_genre FROM filme;
