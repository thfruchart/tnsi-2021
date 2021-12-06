--Exercice 1
-- Donner l’expression SQL des requêtes suivantes ainsi que le résultat obtenu.
-- 1.Noms des stations ayant strictement plus de 200 places.
SELECT NomStation
FROM  Stations
WHERE Capacite > 200 ;

-- 2.Noms des clients dont le nom commence par ‘J’ ou dont le solde est supérieur à 10 000.
SELECT Nom
FROM  Clients
WHERE  Nom LIKE 'J%'  OR  Solde > 10000 ;  

-- 3.Noms des stations qui proposent de la plongée.
SELECT NomStation
FROM  Activités
WHERE  Libelle = 'Plongée' ;  

-- ou 


-- Exercice 2
-- Donner l’expression SQL des requêtes suivantes ainsi que le résultat obtenu.
-- 1.Noms des clients qui sont allés à La Bourboule.
SELECT Nom
FROM  Clients
JOIN Séjours ON  Séjours.IdClient = Clients.IdClient
WHERE   NomStation = 'La Bourboule';

-- ou en précisant le nom des tables
SELECT Clients.Nom
FROM  Clients
JOIN Séjours ON  Séjours.IdClient = Clients.IdClient
WHERE   Séjours.NomStation = 'La Bourboule';


-- 2.Noms des stations visitées par des européens.
SELECT  Séjours.NomStation
FROM  Séjours
JOIN Clients ON  Séjours.IdClient = Clients.IdClient
WHERE  Clients.Region = 'Europe'

-- Exercice 3
-- Donner l’expression SQL des requêtes suivantes ainsi que le résultat obtenu.
-- 1.Combien de séjours ont eu lieu à Victoria ? 
-- On stockera le résultat dans une colonne nommée ‘Total’.
SELECT  COUNT(*)  AS 'Total'
FROM Séjours
WHERE NomStation='Victoria';


-- 2.Donner le prix moyen d’une activité à Tanger. 
-- On stockera le résultat dans une colonne nommée ‘Prix Moyen Activités Tanger’.
SELECT AVG(prix) 
FROM Activités
WHERE NomStation = 'Tanger' ; 





