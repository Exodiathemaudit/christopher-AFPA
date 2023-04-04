
USE hotel;


--************** VUE SUR LA BASE HOTEL******************


--1 afficher la liste des hotels avec leurs station

CREATE  VIEW v_cli_sta
AS
SELECT hot_nom, sta_nom
FROM station
JOIN hotel ON station.sta_id = hotel.hot_sta_id;

SELECT * FROM v_cli_sta;
DROP VIEW v_cli_sta;

--2 afficher la liste des chambres et leurs hotel

CREATE View if not EXISTS v_cha_hot
AS
SELECT cha_numéro, hot_nom
FROM hotel
JOIN chambre ON hot_id = cha_hot_id;

--3 Afficher la liste des réservations avec le nom des clients

CREATE VIEW res_id, cli_nom, cli_prénom
FROM reservation
JOIN client ON res_cli_id = cli_id;

--4 Afficher la liste des chambres avec le nom de l'hotel et le nom de la station

CREATE VIEW cha_numéro, sta_nom, hot_nom
FROM chambre
JOIN hotel ON cha_hot_id = hot_id
JOIN station ON hot_sta_id = sta_id;

--5 afficher les réservations avec le nom du client et le nom de l'hotel

create View res_id, cli_nom, cli_prenom, res_id
FROM reservation
JOIN client ON res_cli_id = cli_id;



-- **************** VUE SUR LA BASE PAPYRUS*************

--1 afficher par code produit, la somme des quantités commandées et le prix total correspondant : on nommera la colonne correspondant à la somme des quantités commandées
USE PAPYRUS;


CREATE VIEW IF NOT EXISTS v_code_produit
AS
(
SELECT codart, SUM(qtecde), SUM(qtecde * priuni)
FROM ligcom
GROUP BY codart
);

SELECT * FROM v_code_produit;
DROP VIEW v_code_produit;

--2 Afficher les ventes dont le code produit est le l100(affichage de toutes les colonnes de la table vente).

CREATE VIEW v_venteprodl100
AS
SELECT * FROM vente
WHERE'codart' = 'l100';

--3 A partir de la vue précédente, créez v_Ventesl100Grobigan remontant toutes les ventes concernant le produit l100 et le fournisseur 00120

CREATE VIEW v_VentesI100Grobrigan
AS
SELECT * FROM v_VentesI100
WHERE numfou = 120;

SELECT * FROM v_VentesI100Grobrigan;
DROP VIEW v_VentesI100Grobrigan;

