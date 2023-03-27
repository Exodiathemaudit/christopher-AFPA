--7 afficher la liste des hotels avec leur station
SELECT sta_nom,hot_nom,hot_ville,hot_ville
FROM hotel, station
JOIN hot_sta_id = sta_id;

--8 afficher la listes des chambres et leur hotel

SELECT cha_numéro, hot_id
FROM chambre, hotel
JOIN hotel ON hot_sta_id = cha_numéro

--9 afficher la liste des chambres de plus d'une place dans des hotels situés sur la ville de Bretou

SELECT cha_id, cha_capacité,hot_ville,
FROM hotel, chambre
JOIN hotel ON cha_capacité = hot_ville

--10 Afficher la liste des réservations avec le nom des clients

SELECT cli_nom, hot_nom, res_date
FROM client
JOIN reservation ON r.res_cli_id = cli_id
join chambre on cha_id = r.res_cha_id
join hotel ON hot_id = cha_hot_id

--11 Afficher la liste des chambres avec le nom de l'hotel et le nom de la station
SELECT sta_nom, hot_nom, cha_numero, cha_capacité
from station
JOIN hotel h ON hot_sta_id = s.sta_id
JOIN chambre ON cha_hot = h.hot_id;

--12 Afficher les reservations avec le nom du client et le nom de l'hotel

SELECT cli_nom, hot_nom, res_date_début, res_date_fin, DATEDIFF(res_date)
FROM client 
JOIN reservation r ON r.res_cli_id = r.res_cha_id
JOIN hotel h ON h.hot_id = ch.cha_hot_id;

