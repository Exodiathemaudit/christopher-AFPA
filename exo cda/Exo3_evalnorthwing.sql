--     regle de gestion  ===========================
-- =================================================
DELIMITER |
CREATE TRIGGER controle_pays_commande BEFORE INSERT ON order_details
    FOR EACH ROW
    BEGIN
        DECLARE paysLivraison VARCHAR(15);
        DECLARE paysFournisseur VARCHAR(15);
        DECLARE numCommande INT(11);
        DECLARE numProduit INT(11);

        SET numCommande = NEW.OrderID;
        SET numProduit = NEW.ProductID;

        SET paysLivraison = (
            SELECT ShipCountry
            FROM orders
            JOIN order_details ON orders.OrderID = order_details.OrderID
            WHERE orders.OrderID = numCommande
        );

        SET paysFournisseur = (
            SELECT Country
            FROM suppliers
            JOIN products ON suppliers.SupplierID = products.SupplierID
            WHERE ProductID= numProduit
        );

        IF paysLivraison != paysFournisseur
            THEN SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Livraison impossible';
        END IF;
    END;

DELIMITER ;



DROP TRIGGER controle_pays_commande;



INSERT INTO `order_details` (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) 
            VALUES (10248, 60, 34, 5,0);




DELETE FROM `order_details`
WHERE `ProductID`=60 AND `OrderID`=10248;



-- ========================================================= pikk



USE northwind;

DROP TRIGGER IF EXISTS insert_orders_details_adresse_client_fournisseur;

DELIMITER |

CREATE TRIGGER insert_orders_details_adresse_client_fournisseur BEFORE INSERT ON `order_details`
FOR EACH ROW
BEGIN

    DECLARE idCommande INT;
    DECLARE idProduit INT;
    DECLARE paysFournisseur varchar(15);
    DECLARE paysClient varchar(15);

    SET idCommande = NEW.OrderID;
    
    SET idProduit = NEW.ProductID;

    SET paysFournisseur = (
        SELECT s.Country
        FROM suppliers s
        JOIN products p ON s.SupplierID = p.SupplierID
        WHERE p.ProductID = idProduit
        );

    SET paysClient = (
        SELECT DISTINCT c.Country
        FROM customers c
        JOIN orders o ON c.CustomerID = o.CustomerID
        JOIN `order_details` od ON o.OrderID = od.OrderID
        WHERE od.OrderID = idCommande
        );

    IF paysClient != paysFournisseur
    THEN
        SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Insertion interdite (le client et le fournisseur du produit n\'ont pas le même pays de résidence)';
    END IF;
END|

DELIMITER ;



-- TEST NEGATIF 

USE northwind;
INSERT INTO `order_details`(`OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`)
VALUES
(10248, 1, 18.000, 8, 0);


-- TEST POSITIF 

USE northwind;
INSERT INTO `order_details`(`OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`)
VALUES
(10248, 58, 13.2500, 10, 0);


-- SUPPRESSION DE LA LIGNE AJOUTEE AVEC LE TEST POSITIF 

DELETE FROM `order_details`
WHERE OrderID = 10248 AND ProductID = 58;

