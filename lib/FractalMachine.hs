module FractalMachine
( multiUnion
, hutchinsonOperator
, hutchinsonIterate
, plotFractal) where

import qualified Data.Set as Set
import Graphics.Rendering.Chart.Easy
import Graphics.Rendering.Chart.Backend.Cairo(toFile)

-- Given a list of sets,
-- returns the union of all of the sets.
multiUnion :: (Ord a) => [Set.Set a] -> Set.Set a
multiUnion [] = Set.empty
multiUnion (x:xs) = x `Set.union` (multiUnion xs)

-- Given a list of contractions and an input set, 
-- act as the Hutchinson operator composed of those
-- contractions. 
hutchinsonOperator :: (Ord a) => [(a -> a)] -> Set.Set a -> Set.Set a
hutchinsonOperator l s = multiUnion [(Set.map f s) | f <- l]

-- Given a Hutchinson operator, an input set, and a number of iterations,
-- returns the output set.
-- If all functions in the Hutchinson operator are contractions, this
-- approaches a fractal.
hutchinsonIterate :: (Ord a) => (Set.Set a -> Set.Set a) -> Set.Set a -> Int -> Set.Set a
hutchinsonIterate _ s 0 = s
hutchinsonIterate h s n
        | n < 0 = error "Number of iterations less than zero!"
        | otherwise = hutchinsonIterate h (h s) (n-1)

-- Given an output filename, a list of functions, a starting  
plotFractal :: String -> [(Float,Float) -> (Float,Float)] -> [(Float,Float)] -> Int -> IO ()
plotFractal filename list startset iterations = toFile def filename $ do
        layout_title .= ""
        setColors [opaque black]
        plot (points "" (Set.toList (hutchinsonIterate (hutchinsonOperator list) (Set.fromList startset) iterations)))