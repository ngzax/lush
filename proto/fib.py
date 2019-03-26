import pprint

def F(n):
    if n == 0: return 0
    elif n == 1: return 1
    else: return F(n-1)+F(n-2)

fib = (F(i) for i in range(12))
pprint.pprint(list(fib))
