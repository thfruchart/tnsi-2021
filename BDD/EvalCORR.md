**1** Les champs idPiece et idActeur sont des clé étrangères, qui font référence aux champs de même nom dans les tables Piece et Acteurs

Si ces tables sont vides, la contrainte de référence ne sera pas vérifiée : 
on ne peut écrire dans Role.idPiece  que des valeurs déjà présentes dans Piece.idPiece 
de même on ne peut écrire dans Role.idActeur  que des valeurs déjà présentes dans Acteur.idActeur

**2** On écrit une requête d'insertion dans la table Role. 

`INSERT INTO Role(idPiece, idActeur, nomRole) VALUES (46721, 389461, 'Tartuffe') ;`

**3** Cette requête met à jour la table Piece en modifiant la valeur du champ langue : 
toutes les lignes pour lesquelles la langue était "Américain" ou "Britanique" sont modifiées, 
et la valeur du champ langue est remplacée par "Anglais". 

**4 a**
`SELECT nom, prenom
FROM Acteur 
WHERE anneeNaiss >= 1990 ;`

**4 b**
`SELECT MAX(anneeNaiss)
FROM Acteur ;`

**4 c**
`SELECT nomRole 
FROM Role
JOIN Acteur ON Acteur.idActeur = Role.idActeur
WHERE nom='Macaigne' AND prenom='Vincent' ; `

**4 d**
`SELECT titre
FROM Piece
JOIN Role ON Role.idPiece = Piece.idPiece
JOIN Acteur ON Acteur. idActeur = Role.idActeur
WHERE langue = 'Russe' AND prenom='Jeanne' AND nom='Balibar' ;`
