import threading

def hello(n):
    for i in range(5):
        print("Thread n°", n, " => i =", i)
    print("----- FIN du thread n°", n)

for n in range(4):
    t = threading.Thread(target = hello, args = [n])
    t.start()
