-- TP ENTREPRISE COMMERCIALE 

USE classicmodels;

-- 1 - Afficher les noms, prénoms et titres de l’ensemble des employées en les ordonnant par leurs noms de famille

SELECT lastName, firstName, jobTitle 
FROM employees 
ORDER BY lastName;

-- 2 – Afficher les noms des employées en supprimant les doublons.

SELECT DISTINCT lastName 
FROM employees;

-- 3 - Sélectionner et afficher le nom de la société, le prénom et le nom du contact des clients qui habitent aux USA.

SELECT customerName, contactLastName, contactFirstName 
FROM customers
WHERE country = 'USA';

-- 4 - Sélectionner les emails des employées qui ont un firstname qui se termine par 'y' et qui ont un reportsTo qui commence par '105'.

SELECT email 
FROM employees
WHERE firstname LIKE '%y'
AND reportsTo LIKE '105%';

-- 5 - Sélectionner les noms et emails des employees qui ont un firstname qui commence par un L.

SELECT lastName, email 
FROM employees
WHERE firstName LIKE 'L%';

-- 6 - Trier la table customers par ordre alphabétique à partir du contactLastName

SELECT * 
FROM customers
ORDER BY contactLastName;

-- 7 - Trier la table employées par ordre croissant en se basant officeCode

SELECT * 
FROM employees 
ORDER BY officeCode;

-- 8 - Sélectionner les clients qui ont payé pour plus de 100000 euros.

SELECT cu.customerName, SUM(amount) AS payment
FROM customers cu
INNER JOIN payments pay ON cu.customerNumber = pay.customerNumber
GROUP BY cu.customerName
HAVING payment > 100000;

-- 9 - Afficher le total des ventes par 'orderNumber' et 'status' ?  

SELECT DISTINCT od.orderNumber, status, SUM(od.quantityOrdered*od.priceEach) AS Total
FROM orders o
INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY od.orderNumber;

-- 10 – Afficher les “orderNumber”, “productName”, “msrp”, “priceEach” des produits qui un productcode = ‘S10_1678’ et qui ont un msrp supérieur au priceEach.

SELECT  od.orderNumber, pr.productName, pr.msrp, od.priceEach 
FROM orderdetails od
INNER JOIN products pr ON od.productCode = pr.productCode
WHERE pr.productCode = 'S10_1678'
AND pr.msrp > od.priceEach;

-- 11 - Sélectionner les emails des employées qui ont un firstname qui se termine par 'y' ou qui appartiennent à au bureau de San Francisco.

SELECT emp.email
FROM employees emp
INNER JOIN offices offi ON emp.officeCode = offi.officeCode
WHERE emp.firstname LIKE '%y'
OR offi.city = 'San Francisco';

-- 12 - Donner le nombre de client qui sont gérés par Leslie Jennings.

SELECT COUNT(cu.customerNumber) AS clientLeslieJennings
FROM customers cu
INNER JOIN employees emp ON cu.salesRepEmployeeNumber = emp.employeeNumber
WHERE lastName = 'Jennings'
AND firstname = 'Leslie';

-- 13 - Afficher le nom et prénom de la personne qui a le jobTitle de Président

SELECT firstName, lastName 
FROM employees 
WHERE jobTitle = 'President';

-- 14 - Donner la somme des montants des paiements reçu pendant le mois de Mars 2005.

SELECT SUM(amount) AS Total_Payment_March_2005
FROM payments
WHERE paymentDate LIKE '2005-03%';

-- 15 - Afficher le total des paiements par nom des clients.

SELECT cu.customerName,SUM(pay.amount) AS Total_Payment 
FROM payments pay
INNER JOIN customers cu ON pay.customerNumber = cu.customerNumber
GROUP BY cu.customerName;

-- 16 - Afficher la date de commande et le numéro client des commandes annulées

SELECT orderDate, customerNumber 
FROM orders 
WHERE status = 'Cancelled';

-- 17 - Afficher la liste (prénom et nom ) des subordonnées de Bow Anthony

SELECT emp1.lastName, emp1.firstName
FROM employees emp1
INNER JOIN employees emp2 ON emp1.reportsTo = emp2.employeeNumber
WHERE emp2.lastName = 'Bow';

-- 18 - Afficher le nom et le prénom du ou des employés qui n'ont pas de supérieur hiérarchique.

SELECT lastName, firstName
FROM employees
WHERE reportsTo IS NULL;

-- 19 - Dans le detail des commandes afficher la commande avec la plus petite quantité.

SELECT orderNumber, MIN(quantityOrdered)
FROM orderdetails
WHERE quantityOrdered =  (SELECT MIN(quantityOrdered) FROM orderdetails)
GROUP BY orderNumber;

-- 20 - Afficher le detail de la commande qui est datée du 21-04-2003

SELECT * 
FROM orderdetails od
INNER JOIN orders o ON od.orderNumber = o.orderNumber
WHERE orderDate = '2003-04-21%';

-- 21 – Afficher la liste des managers avec les employées qu’ils managent. Le nom de la colonne s’appellera ‘Manager’ pour la colonne des managers, elle 
-- regroupera leurs noms et prénoms. Idem pour la colonne employée, elle
-- s’appellera ‘Employée’, elle affichera le nom et prénom des employés.

SELECT CONCAT(emp1.lastName,' ', emp1.firstName) AS Employée, CONCAT(emp2.lastName,' ', emp2.firstName) AS Manager
FROM employees emp1
INNER JOIN employees emp2 ON emp1.reportsTo = emp2.employeeNumber;

-- 22 – Afficher le nom des managers et le nombre d’employé qu’ils managent.employees

SELECT emp2.employeeNumber, emp2.lastName, COUNT(emp1.employeeNumber)
FROM employees emp1
INNER JOIN employees emp2 ON emp1.reportsTo = emp2.employeeNumber
GROUP BY emp2.lastName, employeeNumber;