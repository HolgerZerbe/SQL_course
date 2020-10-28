USE filmverleih;

SELECT titel, floor(spieldauer DIV 60) as stunden, round((spieldauer / 60 - spieldauer DIV 60)*60) as minuten FROM filme;