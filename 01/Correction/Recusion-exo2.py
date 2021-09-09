# Exo2

def u(n, a, b):
    if n==0:            # 1er cas de base
        return a
    if n==1 :           # 2eme cas de base
        return b
    return  3* u(n-1, a, b) + 1  # appel récursif

