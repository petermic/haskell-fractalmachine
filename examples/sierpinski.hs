import FractalMachine

s1 (x,y) = (x/2,y/2)

s2 (x,y) = (x/2+1,y/2)

s3 (x,y) = (x/2+1/2,y/2+1)

main = FractalMachine.plotFractal "sierpinski.png" [s1,s2,s3] [(0,0)] 10