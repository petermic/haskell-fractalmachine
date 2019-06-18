import lib.FractalMachine

-- Component function definitions

d1 (x,y) = (x/2-y/2,x/2+y/2)

d2 (x,y) = (-x/2-y/2+1,x/2-y/2)

-- syntax: plotFractal [output-filename] [list-of-functions] [list-of-starting-points] [number-of-iterations]

main = FractalMachine.plotFractal "dragoncurve.png" [d1,d2] [(0,0)] 17