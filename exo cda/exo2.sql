CREATE DATABASE Exercice2;
USE Exercice2;

CREATE TABLE station(
    num_station INT(2),
    nom_station varchar(50)

);

CREATE TABLE Hotel(
    capacité_hotel int(3),
    catégorie_hotel int(1),
    nom_hotel varchar(50),
    adresse_hotel varchar(50),
    num_station int(2)
);

CREATE TABLE chambre(
    capacité_chambre int(2),
    degre_confort int(2),
    exposition varchar(50),
    type_chambre varchar(15)
    num_chambre int(3),
    num_hotel int (2)
);

CREATE TABLE Réservation(
    num_chambre int(3), 
    num_client int(3),
    date_début date,
    date_fin date,
    date_reservation date,
    montant_arrhes decimal(3.2),
    prix_total decimal(4.2)
);

CREATE TABLE CLIENT(
    adresse_client varchar(50),
    nom_client varchar(50),
    prenom_client varchar(50),
    num_client int not null
);

CREATE INDEX `num_client` ON Client (`num_client` ASC);

ALTER TABLE Station CHANGE num_station num_sta INT(2);
ALTER TABLE Station CHANGE nom_station nom_sta VARCHAR(50);

ALTER TABLE Hotel CHANGE capacite_hotel cap_htl INT(3);
ALTER TABLE Hotel CHANGE categorie_hotel cat_htl INT(1);
ALTER TABLE Hotel CHANGE nom_hotel nom_htl VARCHAR(50);
ALTER TABLE Hotel CHANGE adresse_hotel adr_htl VARCHAR(50); 
ALTER TABLE Hotel CHANGE num_hotel num_htl INT(2);
ALTER TABLE Hotel CHANGE num_station sta_htl INT(2);

ALTER TABLE Chambre CHANGE capacite_chambre cap_cha INT(2);
ALTER TABLE Chambre CHANGE degre_confort cft_cha INT(2);
ALTER TABLE Chambre CHANGE exposition exp_cha VARCHAR(15);
ALTER TABLE Chambre CHANGE type_chambre typ_cha VARCHAR(15);
ALTER TABLE Chambre CHANGE num_chambre num_cha INT(3);
ALTER TABLE Chambre CHANGE num_hotel htl_cha INT(2);

ALTER TABLE Reservation CHANGE num_chambre cha_res INT(3);
ALTER TABLE Reservation CHANGE num_client cli_res INT(4);
ALTER TABLE Reservation CHANGE date_debut deb_res DATE;
ALTER TABLE Reservation CHANGE date_fin fin_res DATE;
ALTER TABLE Reservation CHANGE date_reservation dat_res DATE;
ALTER TABLE Reservation CHANGE montant_arrhes arh_res DECIMAL(6,2);
ALTER TABLE Reservation CHANGE prix_total tot_res DECIMAL(6,2);

ALTER TABLE Client CHANGE adresse_client adr_cli VARCHAR(50);
ALTER TABLE Client CHANGE nom_client nom_cli VARCHAR(50);
ALTER TABLE Client CHANGE prenom_client pre_cli VARCHAR(50);
ALTER TABLE Client CHANGE num_client num_cli INT NOT NULL;

CREATE INDEX `num_client` ON Client (`num_client` ASC);


