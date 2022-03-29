# Exercice 1
## Partie A

1. le code affiche
```python
8
[8, 7, 18, 16, 12, 9, 17, 3]
```

2.
```python
for i in range(2,4+1):
    print(notes[i])
```
## Partie B
1.
```python
def tri_insertion(liste):
    """ trie par insertion la liste en paramètre """
    for indice_courant in range(1,len(liste)):
        element_a_inserer = liste[indice_courant]
        i = indice_courant - 1
        while i >= 0 and liste[i] > element_a_inserer :
            liste[i+1] = liste[i]
            i = i - 1
        liste[i + 1] = element_a_inserer
```

`notes = [8, 7, 18, 14, 12, 9, 17, 3]`  
Lorsqu'on exécute `tri_insertion(notes)` :  
2. après le premier passage dans la boucle `for` : `notes = [7, 8, 18, 14, 12, 9, 17, 3]`  
3. après le troisième passage dans la boucle `for` : `notes = [7, 8, 14, 18, 12, 9, 17, 3]`  

## Partie C

1. L'algorithme est **récursif** car on appelle `tri_fusion` pour trier chaque partie du tableau.
2. On fusionne deux tas de cartes en comparant les cartes situées au sommet de chaque tas : 
    * si aucun des tas n'est vide : on sélectionne la plus petite des deux cartes
    * si un des tas est vide, on sélectionne la carte au somme du tas restant

3.
```python
def tri_fusion (liste, i_debut, i_fin):
    """ trie par fusion la liste en paramètre depuis
    i_debut jusqu’à i_fin """
    if i_debut < i_fin:
        i_partage = floor((i_debut + i_fin) / 2)
        tri_fusion(liste, i_debut, i_partage)
        tri_fusion(liste, i_partage+1, i_fin)
        fusionner(liste, i_debut, i_partage, i_fin)
```

4. La première ligne `from math import floor` permet d'importer la fonction floor du module math, et d'obtenir un nombre entier.

## Partie D
1. L'algorithme utilisé est le **tri fusion** : en effet, la lise a été découpée en deux, puis en quatre, puis en huit sous-listes, qui sont triées puis fusionnées.
2.  
    * $O(n^2)$ : tri par insertion
    * $O(n log(n))$ : tri fusion
3. Le tri fusion est plus efficace que le tri par insertion.  La complexité en  $O(n log(n))$ est meilleure que  $O(n^2)$.
