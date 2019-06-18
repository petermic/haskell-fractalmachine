import FractalMachine

c1 (x,y) = (x/2+y/2,y/2-x/2)

c2 (x,y) = (x/2-y/2+1/2,x/2+y/2-1/2)

main = FractalMachine.plotFractal "levyC.png" [c1,c2] [(0,0)] 15