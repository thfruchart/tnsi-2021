# exo3

a = 100

def syracuse(n):
    if n==0:
        return a
    else :
        # compléter le code ici
        precedent = syracuse(n-1)
        if precedent % 2 == 0 :
            return precedent//2
        else :
            return precedent *3 + 1