import FractalMachine

-- Component function definitions

s1 (x,y) = (x/2,y/2)

s2 (x,y) = (x/2+1,y/2)

s3 (x,y) = (x/2+1/2,y/2+1)

-- syntax: plotFractal [output-filename] [list-of-functions] [list-of-starting-points] [number-of-iterations]

main = FractalMachine.plotFractal "sierpinski.png" [s1,s2,s3] [(0,0)] 10