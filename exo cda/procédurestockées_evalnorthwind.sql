--coder deux procedures stockees correspondant aux requetes 9 et 10.
--Les procedures stockees doivent prendre en compte les eventuels parametres.


--procédure stockées numéro 1

DELIMITER |

CREATE Procedure derniére commande(IN CompanyName VARCHAR(50))
BEGIN
    SELECT CompanyName,MAX(OrderDate)
    FROM orders
    JOIN customers ON orders. CustomerID = customers.CustomerID
    WHERE CompanyName = company;
END |

DELIMITER;

--procédure stockées numéro 2

DELIMITER |

CREATE Procedure délai moyen (IN date1 VARCHAR(20),date2 VARCHAR(20));
BEGIN
    SELECT AVG (DATETIME(date1,date2)) 
    FROM   orders 
END

DELIMITER;
    
