--********************* exercice 1 **********

CREATE Procedure Lst_fournis()
BEGIN
    SELECT DISTINCT numfou
    FROM entcom
WHERE numcom !=0;
END;


CALL Lst_fournis();


SHOW CREATE PROCEDURE Lst_fournis;


--******************** EXERCICE 2 **********************

CREATE PROCEDURE lST_Commandes()
