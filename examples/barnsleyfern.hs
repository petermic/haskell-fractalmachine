import FractalMachine

f1 (x,y) = (0,0.16*y)

f2 (x,y) = (0.85*x+0.04*y,-0.04*x+0.85*y+1.6)

f3 (x,y) = (0.20*x-0.26*y,0.23*x+0.22*y+1.6)

f4 (x,y) = (-0.15*x+0.28*y,0.26*x+0.24*y+0.44)

main = FractalMachine.plotFractal "barnsleyfern.png" [f1,f2,f3,f4] [(0,0)] 10