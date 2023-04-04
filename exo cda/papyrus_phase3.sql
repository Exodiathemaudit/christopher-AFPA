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

--10 lister les commandes par nom fournisseur

SELECT nomfou, numcom, LEFT(datcom,10)
FROM fournis
JOIN entcom ON fournis.numfou = entcom.numfou
ORDER BY fournis.numfou;

--11 sortir les produits des commandes ayant le  mot "urgent" en observation ?

SELECT DISTINCT produit.codart, libart, obscom
FROM produit,ligcom,entcom
WHERE obscom LIKE '%urgen%'
ORDER BY codart;

--12 coder de 2 maniéres différentes la requete suivante : lister le nom des fournisseurs susceptibles de livrer au moins un article

SELECT nomfou
FROM fournis,vente
WHERE ((qte1 + qte2 + qte3) !=0)
GROUP BY nomfou;

SELECT nomfou
FROM fournis, vente, produit
WHERE produit.stkphy !=0
GROUP BY nomfou;

--13 coder de 2 maniéres différentes la requete suivante : lister les commandes (numéro et date) dont le fournisseur est celui de la commande 70210 :

SELECT entcom.numcom, LEFT(datcom,10)
FROM entcom, fournis
WHERE numcom = 70210
GROUP BY numcom;

SELECT entcom.numcom, LEFT(datcom,10)
FROM ligcom,fournis, entcom
WHERE ligcom.numcom = 70210
GROUP BY entcom.numcom;

--14 dans les articles susceptibles d'etre vendus, lister les articles moins chers(basé sur prix1) que le moins cher des rubans (article dont le premier caractere commence par R).
--On affichera le libellé de l'article et prix1

SELECT codart, libart
FROM produit
JOIN vente ON produit.codart = vente.codart
WHERE (min(prix1)<(min(prix1)WHERE LEFT(libart,1)='r'));

--15 Editer la liste des fornisseurs susceptibles de livrer les produits dont le stock est inférieur ou égal à 150 % du stock d'alerte. La liste est triée par produit puis fournisseur

SELECT produit.codart, libart, stkphy, stkale
FROM produit
JOIN vente ON produit.codart = vente.codart
WHERE stkphy <= (1.5 * stkale);

--16. Editer la liste des fournisseurs susceptibles de livrer les produit dont le stock est inférieur ou égal à 150 % du stock d'alertes et un délai de livraison
-- d'au plus 30 jours.
-- la liste est triée par fournisseur puis produit

SELECT fournis.numfou, nomfou, stkphy, stkale, delliv
FROM produit
JOIN vente ON produit.codart = vente.codart
JOIN fournis ON vente.numfou = fournis.numfou
WHERE stkphy <=(1.5 * stkale)
GROUP BY numfou
HAVING (delliv < 30)
ORDER BY 1 ASC;

--17  Avec le meme type de selection que ci-dessus, sortir un total des stocks par fournisseur trié par total décroissant.

--18 EN fin d'année, sortir la liste des produits dont la quantité réellement commandée dépasse 90% de la quantité annuelle prévue.

--19 calculer le chiffres d'affaire par fournisseur pour l'année 93 sachant que les prix indiqués sont hors taxes et que le taux de TVA est 20%.


--          IV LES BESOINS DE MIS A JOUR **********


--1 Application d'une augmentation de tarif de 4% pour le prix 1 et de 2% pour le prix pour le fournisseur 9180

SELECT prix,prix2
FROM vente
WHERE numfou = 9180;
UPDATE vente
SET prix1 = prix1 * 1.04
    prix2 = prix2 * 1.02
WHERE numfou = 9180;


--2 Dans la table vente, mettre à jour le prix2 des articles dont le prix2 est NULL, en affectant a prix2 la valeur de prix1.

SELECT prix,prix2
FROM vente
WHERE vente = 9180;
UPDATE vente
SET prix2 = prix 
WHERE vente = 

--3 Mettre à jour le champ obscom en positionnant '*****' pour toutes les commandes dont le fournisseur a un indice de satisfaction <5

--4 suppression du produit l110

SELECT numcom
FROM entcom
DELETE = produit l110
WHERE numcom


--5 suppression des entete de commande qui n'ont aucune ligne




