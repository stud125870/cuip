import math
import time
import ctypes
   
def funcasm(x, y):
    return ((math.cos(x) + math.sin(x)) / math.exp(x))
t0=time.time()

lib = ctypes.CDLL('./MDLL.dll')

if __name__ == "__main__":
    
    x = int(input("Input x: "))
    y = int(input("Input y: "))
    R = funcasm(x, y)
    print("Result: ", R)

    t1=time.time()
    print(t1-t0)