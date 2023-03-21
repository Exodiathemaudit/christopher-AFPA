--  rechercher le prénom des employés et le numéro de la région de leur département

select * from employé;
SELECT * from dept;

SELECT *
FROM employé
JOIN dept ON  employe.nodep=dept.nodept;

--rechercher le numéro du département, le nom du département,le nom des employés classés par numéro de département(renommer les tables utilisées).ADD

SELECT * 
FROM employe
JOIN dept d on e.nodep=d.nodept
order by e.nodep;

-- rechercher le nom des employés du département distribution.

SELECT e.nom, e.prenom
FROM employe e 
JOIN dept d ON e.nodep=d.nodep
WHERE d.nom='distribution';

--rechercher le nom et le salaire des employés qui gagnent plus que leur patron, et le nom et le salaire de leur patron.

SELECT employe.prenom, employe.salaire, patron.prenom, patron.salaire
FROM employe
JOIN employe patron ON employe.nosup=patron.noemp
WHERE employe.salaire>patron.salaire;

--rechercherle nom et le titre des employes qui ont le meme titre que amartakaldire.
SELECT titre FROM employe where nom='amartakaldire';
SELECT *
FROM employe
WHERE titre=(SELECT titre FROM employe where nom='amartakaldire');

-- rechercher le nom,le salaire et le numéro de département des employes qu gagnent plus qu'un seul employe du département 31,classés par numéro de département et salaire.

select salaire from employe where salaire > ANY (
                    select salaire 
                    from employe 
                    where nodep=31
                    );


select salaire 
from employe 
where salaire >  (
    select MIN(salaire) 
    from employe 
    where nodep=31
);

--Rechercher le nom, le salaire et le numéro de département des employés qui gagnent plus que tous les employés du département 31, 
--classés par numéro de département et salaire.

select salaire from employe where salaire > ANY (
                    select salaire 
                    from employe 
                    where nodep=31
                    );
select salaire 
from employe 
where salaire >  (
    select MIN(salaire) 
    from employe 
    where nodep=31
);

-- rechercher le nom et le titre des employés du service 31 qui ont un titre que l'on trouve dans le département 32.

SELECT *
from employe
WHERE nodep=31
AND
titre not in (SELECT titre FROM employe WHERE nodep=32);

--rechercher le nom, le titre et le salaire des employes qui ont le meme titre et le meme salaire que fairant

SELECT *
FROM employe
WHERE salaire in (SELECT salaire from employe WHERE nom='fairent')
AND titre in (select titre FROM employe WHERE nom='fairent');




select * from employe;
select * from dept;



select COUNT(nom), COUNT(tauxcom) from employe;




select titre, COUNT(*), MAX(salaire), MIN(salaire)
from employe
group by titre;


select d.noregion, AVG(e.salaire), COUNT(*)
from employe e
join dept d on e.nodep=d.nodept
GROUP BY d.noregion;


select *
from table1
join table2 on critere_jointure
join table3 on critere_jointure
where critere
group by champ
having critere
order by;

--Rechercher le numéro de département, le nom du département, le nom des employés, en affichant aussi les départements dans lesquels
--il n'y a personne, classés par numéro de département.


select d.nodept, d.nom, e.nom 
from employe e 
right join dept d on e.nodep=d.nodept;



-- LES GROUPES

--1 calculer le nombre d'employés de chaque titre.

select titre, COUNT(*), MAX(salaire), MIN(salaire)
from employe
group by titre;

--2 calculer la moyenne des salaires et leur somme, par région.

SELECT d.noregion, AVG(e.salaire),COUNT(*)
FROM employe e
JOIN dept d ON e.nodep=d.nodept
GROUP BY d.noregion;

--3 afficher les numéros des départements ayant au moins 3 employés.

SELECT d.nodept, COUNT(*) as quantite
FROM employe e
JOIN dept d ON e.nodep=d.nodept
GROUP BY d.nodept
HAVING quantité>=3;

--4 Afficher les lettres qui sont l'initiale d'au moins trois employes

SELECT substring(nom, 1, 1)
FROM employe
GROUP BY substring(nom,1 1)
HAVING COUNT(*)>2;

--5 rechercher le salaire maximum et le salaire minimum parmi tous les salariés et l'écart entre les deux.
SELECT MAX(salaire), MIN(salaire), MAX(salaire)-MIN(salaire) FROM employe;

--6 rechercher le nombre de titre différents.

SELECT COUNT(DISTINCT titre) FROM employe;

--7 pour chaque titre, compter le nombre demployés possédant ce titre.

SELECT titre, COUNT(*)
FROM employe
GROUP BY titre
ORDER BY 2 desc;

--8 pour chaque nom de département, afficher le nom du département et le nombre d'employés.

SELECT d.nom, COUNT(*) as nombre
FROM employe e 
JOIN dept d ON e.nodep=d.nodept
GROUP BY d.nom;

--9 rechercher les titres et la moyennes des salaires par titre dont la moyenne est supérieur à la moyenne des salaires des représentants

SELECT titre, AVG(salaire) as moyenne
FROM employe
GROUP BY titre
HAVING moyenne > (SELECT AVG(salaire) FROM employe WHERE titre = 'representant');

--10 rechercher le nombre de salaires renseignés et le nombre de taux de commission renseignés.

SELECT COUNT(salaire), COUNT(tauxcom) FROM employe;
