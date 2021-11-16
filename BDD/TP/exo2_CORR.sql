-- exemple
SELECT usager.nom, usager.prenom, livre.titre, emprunt.retour 
FROM usager 
JOIN emprunt ON usager.code_barre = emprunt.code_barre 
JOIN livre ON emprunt.isbn = livre.isbn 
WHERE emprunt.retour='2020-01-01';

--1.Afficher le nom et le prénom de l'auteur du livre '1984'
SELECT auteur.nom, auteur.prenom
FROM auteur 
JOIN auteur_de ON auteur.a_id=auteur_de.a_id 
JOIN livre ON livre.isbn= auteur_de.isbn
WHERE  titre='1984';


-- 2.Afficher le titre de tous les livres dont l'auteur a pour nom 'Barjavel'
SELECT livre.titre 
FROM auteur 
JOIN auteur_de ON auteur.a_id=auteur_de.a_id 
JOIN livre ON livre.isbn= auteur_de.isbn
WHERE auteur.nom='Barjavel';

-- 3.Afficher le titre, le nom et le prénom de l'auteur de tous les livres écrits par quelqu'un dont le prénom est 'René'
SELECT livre.titre , auteur.nom, auteur.prenom 
FROM auteur 
JOIN auteur_de ON auteur.a_id=auteur_de.a_id 
JOIN livre ON livre.isbn= auteur_de.isbn
WHERE auteur.prenom='René';

-- 4.Afficher le titre de tous les livres empruntés à rendre avant le 31/03/2020
SELECT livre.titre 
FROM livre
JOIN emprunt ON livre.isbn = emprunt.isbn 
WHERE emprunt.retour<'2020-03-31';

-- 5.Afficher le nom et le prénom des usagers ayant emprunté un livre


-- 6.Même requête que la précédente, en supprimant les doublons

-- 7.Même requête que la précédent, en affichant les noms triés par ordre alphabétique

-- 8.Afficher le nom et le prénom de tous les usagers habitant le 5ème arrondissement (code postal = 75005) ayant emprunté un livre : on fera également afficher le titre du livre et la date de retour prévue.