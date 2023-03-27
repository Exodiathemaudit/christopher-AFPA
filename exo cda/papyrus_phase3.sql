--1 quelles sont les commandes du fournisseur 09120 ?

SELECT numcom
FROM entcom
WHERE numfou = 9120;

--2 Afficher le code des fournisseurs pour lesquels des commandes ont été passées.

SELECT nomfou
FROM entcom
WHERE numcom != 0;

--3 Afficher le nombre de commandes fournisseurs passées, et le nombre de fournisseur concernés.

SELECT DISTINCT numfou, COUNT(numcom)
FROM entcom
GROUP BY numfou;

--4 editer les produits ayant un stock inferieur ou égal au stock d'alerte et dont la quantité annuelle est inférieur à 1000

SELECT "Code : ",codart," Libellé : ", libart," Qté Ann. : ", qteann
FROM produit
WHERE (stkphy <= stkale) AND (qteann < 1000) AND (qteann > 0);

--5 quels sont les fournisseurs situés dans les départements 75 78 92 77 ?

SELECT "Cde postal: ",posfou," Fournisseur: ", nomfou
FROM fournis
WHERE posfou LIKE "75%" 
                OR posfou LIKE "78%" 
                OR posfou LIKE "92%" 
                OR posfou LIKE "77%"
ORDER BY posfou;

--6 quels sont les commandes passées au mois de mars et avril ?

 SELECT "Numéro de commande",numcom,"Date de commande : ",datcom
FROM entcom 
WHERE datcom LIKE "%-03-%" OR datcom LIKE "%-04-%";

--7 quelles sont les commandes du jours qui ont des observations particulières ?


SELECT DISTINCT numcom," Date de commande :", LEFT(datcom,10)
FROM entcom,fournis         
WHERE obscom != "" AND LEFT(datcom,10) = DATE(NOW());

--8 lister les commandes dont le total de chaque commande par total décroissant

SELECT numcom, SUM(qtecde * priuni) AS total
FROM ligcom
GROUP BY numcom
ORDER BY total DESC;

--9 lister les commandes dont le total est supérieur à 10000e


SELECT numcom, (qtecde * priuni) AS total
FROM ligcom
WHERE ((qtecde * priuni) > 10000) AND qtecde > 1000
GROUP BY numcom
ORDER BY total DESC;