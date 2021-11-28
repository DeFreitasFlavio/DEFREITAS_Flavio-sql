-- 1 Le prix total des commandes contenant plus de 5 articles différents

-- 2 La liste de tous les territoires de Peacock Margaret
SELECT
    "TerritoryDescription"
FROM
    "Territory"
    inner JOIN "EmployeeTerritory" on "Territory"."Id" = "EmployeeTerritory"."TerritoryId"
WHERE
    "EmployeeId" = '4'
-- 3 La liste des clients vivant à “London”
SELECT
    *
FROM
    "Customer"
WHERE
    "City" = 'London'
-- 4 La liste des clients ayant commandé pour une livraison à “London” avant 2013
SELECT
    DISTINCT CustomerID,
    CompanyName,
    ContactName,
    ContactTitle,
    Address,
    City,
    Region,
    PostalCode,
    Country,
    Phone,
    Fax
FROM
    Customer
    inner JOIN "Order" on Customer.Id = "Order".CustomerId
WHERE
    ShipCity = 'London' AND OrderDate LIKE '2012%'
-- 5 Afficher le client qui a fait le plus de commande vers le “Brazil”
SELECT *, COUNT(CustomerId) as PlusCommande FROM "Order"
	WHERE 
		ShipCountry = 'Brazil'
	GROUP BY (CustomerId)
	ORDER BY
    	COUNT(CustomerId) DESC
	LIMIT 1
-- 6 Afficher la valeur total de la commande avec l’id 10260

-- 7 Afficher la valeur de toutes les commandes infèrieur à la moyenne de toutes les commandes

-- 8 Lister tous les pays de la base de données (dans les tables employee, order, customer), indiquer pour chaque pays le nombre de lignes correspondantes dans toute la base de données. (Chaque pays ne doit pas apparaître en doublon)

-- 9 Le nom et prénom des employés en ajoutant:

-- le nombre total de commande
-- le total des commandes par employé
-- le pays dans lequel ils ont fait le plus de commande
-- le poids total de toutes les commandes par employé
-- le pourcentage de vente par rapport au meilleur vendeur