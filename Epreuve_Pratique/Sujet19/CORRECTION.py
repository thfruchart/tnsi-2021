# Sujet 19

# exercice 1
def recherche(tab,n):
    ''' recherche dichotomique d'une valeur n dans un tableau tab supposé trié
    la fonction renvoie -1 si n ne figure pas dans tab,
    et renvoie un indice de n dans tab sinon. '''
    g = 0
    d = len(tab)-1
    while g <= d  :
        m = (g+d)//2
        if n == tab[m] :
            return m
        elif n < tab[m] :
            d = m-1
        else : #  n > tab[m]
            g = m+1
    return -1



assert recherche([10,20,30,40,50], 30) == 2
assert recherche([10,20,30,40,50], 10) == 0
assert recherche([10,20,30,40,50], 50) == 4
assert recherche([10,20,30,40,50], 0) == -1
print("EXO1 : test OK")

# Exercice 2
ALPHABET='ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def position_alphabet(lettre):
    return ALPHABET.find(lettre)

def cesar(message, decalage):
    resultat = ''
    for lettre  in message :
        if lettre in ALPHABET :
            indice = (position_alphabet(lettre) + decalage  )%26
            resultat = resultat + ALPHABET[indice]
        else:
            resultat = resultat + lettre
    return resultat

assert cesar('BONJOUR A TOUS, VIVE LA MATIERE NSI.', 4) == 'FSRNSYV E XSYW, ZMZI PE QEXMIVI RWM.'
assert cesar('GTSOTZW F YTZX, ANAJ QF RFYNJWJ SXN.', -5) == 'BONJOUR A TOUS, VIVE LA MATIERE NSI.'
print("EXO2 : test OK")
