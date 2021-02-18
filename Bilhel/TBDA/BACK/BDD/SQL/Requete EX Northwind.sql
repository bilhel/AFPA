-- Exercice 1

SELECT companyname,contactname,contacttitle,Phone 
FROM customers
WHERE country LIKE 'france'

-- Exercice 2

SELECT productname as 'Produit', unitprice as 'Prix'
FROM products
Join suppliers on suppliers.supplierid = products.supplierid
WHERE companyname = 'exotic liquids'

-- Exercice 3

SELECT companyname, COUNT(UnitsOnOrder) as 'Nombre produits'
FROM suppliers
Join products on products.supplierid = suppliers.supplierid
WHERE country ='france'
GROUP BY companyname
ORDER BY COUNT(unitsonorder) DESC

-- Exercice 4

SELECT companyname, COUNT(orderid)
FROM customers
JOIN orders on orders.customerid = customers.customerid
WHERE country = 'france'
GROUP BY companyName
HAVING COUNT(orderid) > 10

-- Exercice 5

SELECT companyname AS 'Client', SUM(unitprice * quantity) as 'CA', country AS 'Pays'
FROM customers
JOIN orders on orders.customerid = customers.customerid
JOIN orders_details ON orders_details.orderid = orders.orderid 
GROUP BY companyname,country
HAVING SUM(unitprice * quantity) > 30000
ORDER BY 'CA' DESC

-- Exercice 6

SELECT shipcountry AS 'Pays'
FROM orders
JOIN orders_details on orders_details.orderid = orders.orderid 
JOIN Products on products.productid = orders_details.productid
JOIN suppliers on suppliers.supplierid = products.supplierid
WHERE suppliers.companyname = 'exotic liquids'
GROUP BY shipcountry

-- Exercice 7

SELECT SUM(unitprice*quantity) as 'Montant des ventes 97'
FROM orders_details
JOIN orders on orders.orderid = orders_details.orderid
WHERE YEAR(orderdate) = 1997

-- Exercice 8

SELECT MONTH(orderdate) AS 'Mois 97', SUM(unitprice*quantity) as 'Montant des ventes'
FROM orders_details
JOIN orders on orders.orderid = orders_details.orderid
WHERE YEAR(orderdate) = 1997
GROUP BY MONTH(orderdate)
ORDER BY MONTH(orderdate) ASC

-- Exercice 9

SELECT MAX(orderdate) AS 'Date de dernière commande'
FROM orders
JOIN customers ON customers.customerid = orders.customerid
WHERE companyname = 'Du monde entier'

-- Exercice 10

SELECT AVG(DATEDIFF(shippeddate,orderdate)) AS 'Delai moyen de livraison en jours'
FROM orders