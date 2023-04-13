--coder deux procedures stockees correspondant aux requetes 9 et 10.
--Les procedures stockees doivent prendre en compte les eventuels parametres.


--requete 9

DELIMITER |

CREATE Procedure derniére commande(IN CompanyName VARCHAR(50))
BEGIN
    SELECT CompanyName,MAX(OrderDate)
    FROM orders
    JOIN customers ON orders. CustomerID = customers.CustomerID
    WHERE CompanyName = company;
END |

DELIMITER;


