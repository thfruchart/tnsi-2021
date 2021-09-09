# exo4

def entiers_entre(a,b):
    if a>b:
        return None
    else:
        print(a)
        return entiers_entre(a+1,b)

# TEST1 :  a < b
print('test1')
entiers_entre(4,9)

# TEST2 :    a == b
print('test2')
entiers_entre(9,4)

# TEST3 :     a > b
print('test')
entiers_entre(3,3)

