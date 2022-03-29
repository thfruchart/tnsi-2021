# Exercice 1
## Partie A

1. le code affiche `[8, 7, 18, 14, 12, 9, 17, 3]`

2.
```python
for i in range(2,4+1):
    print(t[i])
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
