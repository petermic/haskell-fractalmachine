import lib.FractalMachine

d1 (x,y) = (x/2-y/2,x/2+y/2)

d2 (x,y) = (-x/2-y/2+1,x/2-y/2)

main = FractalMachine.plotFractal "dragoncurve.png" [d1,d2] [(0,0)] 17