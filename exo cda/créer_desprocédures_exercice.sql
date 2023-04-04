--********************* exercice 1 **********
DELIMITER |
CREATE Procedure Lst_fournis()
BEGIN
    SELECT DISTINCT numfou
    FROM entcom
WHERE numcom !=0;
END;


CALL Lst_fournis();


SHOW CREATE PROCEDURE Lst_fournis;

DELIMITER;

--******************** EXERCICE 2 **********************
DELIMITER |
CREATE PROCEDURE Lst_commandes(IN obs VARCHAR(50) )
BEGIN
    SELECT DISTINCT produit.codart, libart, obscom
    FROM produit
    JOIN ligcom ON produit.codart = ligcom.codart
    JOIN entcom ON ligcom.numcom = entcom.numcom
    WHERE obscom LIKE obs;
    
END;

CALL Lst_commandes(%urgent%);

DROP PROCEDURE Lst_commandes;

delimiter;

--***************************** EXERCICE 3 ******************
DELIMITER |

CREATE Procedure CA_Fournisseur(IN numero INT, annee INT)
BEGIN
    SELECT DISTINCT  numero INTO numfou, nomfou, SUM(priuni*qteliv)
    FROM entcom
    JOIN ligcom ON entcom.numcom = ligcom.numcom
    JOIN fournis ON ligcom.numcom = fournis.numfou
END

DELIMITER ;

