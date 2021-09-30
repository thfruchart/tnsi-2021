import threading

verrou1 = threading.Lock()
verrou2 = threading.Lock()

def commandeA():
    print("A. Tentative d'acquisition du verrou 1 ")
    verrou1.acquire()
    print("A. Verrou 1 acquis")
    print("A. Tentative d'acquisition du verrou 2 ")
    verrou2.acquire()
    print("A. Verrou 2 acquis")
    print('A.  -- OK -- ')
    verrou2.release()
    print("A. Verrou 2 libéré")
    verrou1.release()
    print("A. Verrou 1 libéré")


def commandeB():
    print("  B. Tentative d'acquisition du verrou 2 ")
    verrou2.acquire()
    print("  B. Verrou 2 acquis")
    print("  B. Tentative d'acquisition du verrou 1 ")
    verrou1.acquire()
    print("  B. Verrou 1 acquis")
    print('  B.  -- OK -- ')
    verrou1.release()
    print("  B. Verrou 1 libéré")
    verrou2.release()
    print("  B. Verrou 2 libéré")


t1 = threading.Thread(target = commandeA, args = [])
t2 = threading.Thread(target = commandeB, args = [])
t1.start()
t2.start()


