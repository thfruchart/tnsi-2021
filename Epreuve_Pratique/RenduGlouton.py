# Créé par thfruchart, le 14/09/2021 en Python 3.7

pieces = [200, 100 , 50, 20, 10, 5, 2, 1]

def rendu_monnaie(somme) :
    resu = []
    i = 0
    p = pieces[i]
    # tant qu'on peut rendre une "grande" pièce, on le fait
    # lorsqu'on ne peut plus, on passe à la pièce suivante
    while somme >0 :
        if somme >= p :
            resu.append(p)
            somme = somme - p
        else : # on passe à la pièce suivante !
            i = i+1
            p = pieces[i]
    return resu