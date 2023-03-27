--1 Afficher la liste des hotels.

SELECT hot_nom, hot_ville
FROM hotel
WHERE hot_id
--2 Afficher la ville de residence de Mr white

SELECT cli_nom, cli_prénom,cli_adresse
FROM client
WHERE cli_nom = 'white';

--3 Afficher la liste des stations dont l'altitude < 1000
SELECT sta_nom, sta_altitude 
FROM station
WHERE sta_altitude < 1000;

--4 Afficher la liste des chambres ayant une capacité > 1

SELECT cha_numéro,cha_capacité,
FROM chambre
WHERE cha_capacité >1;

--5 Afficher les clients n'habitant pas à Londre
SELECT cli_nom, cli_ville
FROM client
WHERE cli_ville;

--6 afficher la liste des hotels située sur la ville de bretou et possédant une catégorie>3

SELECT hot_nom,hot_ville,hot_categorie
FROM hotel
WHERE hot_ville >3;


















  


