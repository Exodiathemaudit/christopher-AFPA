
CREATE DATABASE Exercice1;
USE Exercice1;

CREATE TABLE Personne(
    per_num int AUTO_INCREMENT,
    per_nom Varchar,
    per_prenom Varchar,
    per_adresse Varchar,
    per_ville Varchar,
    PRIMARY KEY(per_num)
    );
    
CREATE TABLE Groupe(
    gro_num INT AUTO_INCREMENT,
    gro_libelle Varchar,
    PRIMARY KEY(gro_num)
    );
 
CREATE TABLE Appartient(
    per_num int,
    gro_num int,
    PRIMARY KEY (per_num,gro_num),
    FOREIGN KEY(per_num) REFERENCES Personne (per_num),
    foreign KEY(gro_num) REFERENCES Groupe(gro_num)
    );
    