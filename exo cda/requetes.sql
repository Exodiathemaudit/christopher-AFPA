-- 1  afficher toutes les informations concernant les employés.

SELECT * from employé;

--2 Afficher toutes les informations concernant les départements.

SELECT *FROM dept;

--3 Afficher le nom, la date d'embauche, le numéro du supérieur,le numéro de département et le salaire de tous les employés.

select nom, nodep, dateemb as `date d'embauche`
from employe;

--4 afficher la liste de tous les employés

SELECT titre from employés;

--5 afficher les différentes valeurs des titres des employés.

SELECT DISTINCT from employés;

--6 afficher le nom, le numéro d'employé et le numéro du département des employés dont le titre est secrétaire

SELECT nom, noemp, nodep, titre
FROM employé
WHERE titre = 'sécrétaire';

-- 7. Afficher le nom et le numéro de département dont le numéro de  département est supérieur à 40.

SELECT nom, nodept
FROM dept
WHERE nodept>40;

--8 afficher le nom et le prénom des employés dont le nom est alphabétiquement antérieur au prénom.

SELECT nom, prenom
FROM employé
WHERE nom<prenom;

--9 Afficher le nom, le salaire et le numéro du département des employés dont le titre est représentant, le numéro de département est 35 et 
-- le supérieur à 20000 

SELECT nom, salaire, titre
FROM employé
WHERE nodep =35 AND titre = 'representant' AND salaire>20000;

-- 10.Afficher le nom, le titre et le salaire des employés dont le titre est
-- « Représentant » ou dont le titre est « Président ».

SELECT nom, titre, salaire
FROM employé
WHERE titre = 'president' OR titre='representant';

 -- 11.Afficher le nom, le titre, le numéro de département, le salaire des
-- employés du département 34, dont le titre est « Représentant » ou
-- « Secrétaire »

SELECT nom, titre, salaire, nodep
FROM employe
WHERE nodep=34 AND (titre='représentant' OR titre='secretaire');

--12 afficher le nom , le titre, le numéro de département, le salaire des employés dont le titre est représentant, ou dont le titre est secrétaire dans le 
-- département numéro 34.
SELECT nom, titre, salaire, nodep
from employé
WHERE titre='representant' OR (nodep=34 AND titre='secrétaire');

--13 Afficher le nom, et le salaire des employés dont le salaire est compris entre 20000 et 30000
SELECT nom, salaire
FROM employé
WHERE salaire>=20000 AND salaire<=30000;

--15 Afficher le nom des employés commencant par la lettre h

SELECT nom
from employé
WHERE nom LIKE 't%h';

--17 affichez le nom des employés contenant la lettre N

SELECT nom
from employé
WHERE nom LIKE 't%n';

--17 affichez le nom des employés contenant la lettre u en 3éme position.

SELECT *
FROM employe
WHERE nom LIKE '__u%';

--18 Afficher le salaire et le nom des employés du service 41 classée par salaire croissant
SELECT *
FROM employe
ORDER BY salaire asc, nom DESC;

--19 Afficher le salaire et le nom des employés du service 41 classées par salaire décroissant

SELECT *
FROM employe
ORDER BY salaire desc, nom DESC;

--20 Afficher le titre, le salaire et le nom des employés classées par titre croissant et par salaire décroissant

SELECT *
FROM employé
ORDER BY salaire asc, nom DESC

--21 afficher le taux de commission, le salaire et le nom des employés classés par taux de commission croissante

select nom, salaire, tauxcom
from employe;
select nom, salaire, tauxcom, (salaire*tauxcom)/100
from employe;

--22 afficher le nom, le salaire, le taux de commission et le titre des employés dont le taux de commission n'est pas renseigné

SELECT nom, salaire, tauxcom
from employé
WHERE tauxcom is NOT NULL;

--23 afficher le nom, le salaire, le taux de commission et le titre des employés dont le taux de commission est renseigné.
SELECT nom, salaire, tauxcom
FROM employé
WHERE tauxcom is NULL

--24 afficher le nom, le salaire, le taux de commission, le titre des employes dont le taux de commission est supérieur à 15.

SELECT nom, salaire, tauxcom
FROM employé
WHERE tauxcom<15

--25 afficher le nom, le salaire, le taux de commition, le titre des employés dont le taux de commition est supérieur à 15

SELECT nom, salaire, tauxcom
FROM employé
WHERE tauxcom>15

--26 afficher le nom, le salaire, le taux de commission et la commission des employés dont le taux de commition n'est pas nul.(la commition est calculée en multipliant
--le salaire par le taux de commission)
SELECT nom, salaire, tauxcom
FROM employé
WHERE tauxcom is not NULL;

--27 afficher le nom, le salaire, le taux de commition et la commission des employés dont le taux de comm n'est pas nul, classé par taux de commition croissant.

SELECT nom, salaire, tauxcom
FROM employé
WHERE tauxcom is not NULL
ORDER BY tauxcom asc, nom DESC;

--28 afficher le nom et le prenom des employés.renommer les colonnes.

select CONCAT(prenom, ' ', nom) as 'nomcomplet'
from employe;


--29 Afficher les 5 premiéres lettres du nom des employés.

SELECT nom, substring(nom, 1, 5)
FROM employe;

--30 afficher le nom et le rang de la lettre r dans le nom des employés.

SELECT nom,locate('r',nom)
FROM employé;

--31 afficher le nom, le nom en majuscule et le nom en minuscule de l'employé dont le nom est vrante.

select nom, UPPER(nom), CONCAT(UCASE(SUBSTRING(nom, 1, 1)), LOWER(SUBSTRING(nom, 2)))
from employe;

--32 Afficher le nom et le nombre de caractéres du nom des employé
SELECT nom, LENGTH(nom)
FROM employé;