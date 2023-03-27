--13 compter le nombres d'hotel par station

SELECT count (hot_sta_id), (sta_id)
FROM hotel, station
JOIN hot_sta_id ON sta_id;



--14 compter le nombre de chambre par station
SELECT count (cha_id),(sta_id)
FROM station, chambre;


--15  compter le nombre de chambre par station ayant une capacité > 1
SELECT COUNT (cha_capacité),(sta_id)
FROM station, chambre;

--16 Afficher la liste des hotels pour lesquels Mr Squire a effectué une réservation
SELECT COUNT (hot_id), (res_cli_id),(cli_nom)
FROM reservation, hotel, client
WHERE cli_nom = Mr Squire;

--17 Afficher la durée moyenne des réservations par station

SELECT res_date,sta_id
FROM reservation
datetime(res_date)(sta_id);
