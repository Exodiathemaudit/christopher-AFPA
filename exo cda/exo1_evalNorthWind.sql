--1 liste des contact francais :

SELECT 'SupplierID', 'CompanyName', 'ContactName', 'ContactTitle', 'Phone'
FROM suppliers
WHERE Country = 'france';

--2 produits vendus par le fournisseur "Exotic Liquids" :
SELECT `ProductID`, `ProductName`, `UnitPrice`
FROM products
JOIN suppliers ON products.`SupplierID` = suppliers.`SupplierID`
WHERE `CompanyName` = "Exotic Liquids";



--3 Nombre de produits vendus par les fournisseurs Francais dans l'ordre decroissant :
SELECT `CompanyName`, COUNT(productID) resultat
FROM suppliers
JOIN products ON suppliers.`SupplierID`= products.`SupplierID`
WHERE `Country` = "france"
GROUP BY `CompanyName`
ORDER BY resultat DESC;



--4 Liste des clients Francais ayant plus de 10 commandes :

SELECT customers.customerID, CompanyName, Country, (COUNT (orderID))
FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID
GROUP BY CompanyName
HAVING customers.country = "France" AND (COUNT(orderID)) >10;


--5 Liste des clients ayant un chiffre d'affaires> 30.000:
SELECT customers.CompanyName, SUM (UnitPrice*quantity) AS ca, Country
FROM customers
JOIN orders ON Customers.CustomerID = orders.CustomerID
JOIN `order details` ON orders.`OrderID`= order details.`OrderID`
GROUP BY `CompanyName`
HAVING ca > 30000
ORDER BY ca ASC, Country ASC;


--6 Liste des pays dont les clients ont passe commande de produits fournis par "Exotic Liquids" :
SELECT customer.Country, suppliers.`CompanyName`
FROM customers
JOIN orders ON customers.`CustomerID` = order.`CustomerID`
JOIN `order details` ON orders.orderID= order details . `OrderID`
JOIN products ON order details. `ProductID`= products.`ProductID`
JOIN suppliers ON products.`SupplierID` = suppliers.`SupplierID`
WHERE `CompanyName`= "Exotic Liquids";


--7 montant des ventes de 1997:
SELECT EXTRACT(YEAR FROM o.OrderDate) AS "Annee", SUM(od.quantity*od.UnitPrice) AS MontantVente
FROM `order details`od 
JOIN orders o ON o.`OrderID`
LEFT JOIN products p ON p.`ProductID`= od.`ProductID`
WHERE EXTRACT(YEAR FROM o.`OrderDate`)=1997;


--8 Montant des ventes de 1997  par mois :
SELECT EXTRACT(MONTH FROM o.OrderDate) AS "mois", SUM(od.quantity*od.UnitPrice) AS MontantVente
FROM orders o
JOIN Order Details od ON o.OrderID=od.OrderID
WHERE EXTRACT(YEAR FROM o. OrderDATE) = 1997
GROUP BY EXTRACT(MONTH FROM O.OrderDate);



--9 depuis quelle date le client "du monde entier" n'a plus commande ?
SELECT c.CompanyName, MAX (o.OrderDate)
FROM orders o 
JOIN customers c ON c.CustomerID=o.CustomerID
WHERE c.CompanyName="du monde entier";

--10 quel est le delai moyen de livraison en jours ?
SELECT AVG (DATEDIFF(ShippedDate,OrderDate)) AS "délai livraison en jours"
FROM orders;


