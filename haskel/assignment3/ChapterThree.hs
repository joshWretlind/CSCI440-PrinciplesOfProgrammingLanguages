{--
  Author: Josh Wretlind
  
  
  
  One guideline on when to use a guard rather than a comprehention is when
  you would otherwise have a long if block. 
  
  Then, another one is that pattern matching should be able to handle simple
  error cases, such as empty lists/null, and things like that
--}

module ChapterThree where

inList :: Eq a => a -> [a] -> [a]
inList x y = [i | i <- y, elem x [i] ]

square :: Int -> Int
square x = x^2

squareEvenNumbers :: [Int] -> [Int]
squareEvenNumbers x = [square i | i <- x, (mod i 2) == 0]

courseMajor :: [Char] -> [Char]
courseMajor all@(x:y:xs) = all ++ " is a " ++ [x] ++ [y] ++ " course"

threshold :: (Num a, Ord a) => a -> a -> a -> [Char]
threshold x y z 
  | x*y <= lowThreshold = "Total is low"
  | x*y <= medThreshold = "Total is medium"
  | x*y <= highThreshold = "Total is high"
  | otherwise = "Total is extraordinary"
  where
    lowThreshold = z
    medThreshold = 2*z
    highThreshold = 3*z
   
lactate :: (Fractional a, Ord a) => a -> a -> [Char]
lactate x y 
  | x/y >= competitive = "wow, don't do this for long!"
  | x/y >= anaerobic = "anaerobic"
  | x/y >= steadyState = "steadyState"
  | x/y >= aerobic = "aerobic"
  | otherwise = "warmup"
  where
    easy = 0.6
    aerobic = 0.7
    steadyState = 0.8
    anaerobic = 0.9
    competitive = 1

calcAreas :: Num t => [(t,t)] -> [t]
calcAreas x = [area i | i <- x]
  where
    area :: Num t => (t,t) -> t
    area x = (fst x)*(snd x)

calcTriangleAreas :: Fractional t => [(t,t)] -> [t]
calcTriangleAreas x = [area i | i <- x]
  where
    area :: Fractional t => (t,t) -> t
    area x = (fst x)*(snd x)/2

orderTwo :: Ord a => [a] -> [a]
orderTwo x 
  | (x!!0) <= (x!!1) = x
  | (x!!1) <  (x!!0) = [x!!1, x!!0]

{--
orderThree:: Ord t => [t] -> [t]
orderThree x
  | x!!0 == minimum x = [x!!0] ++ orderTwo [x!!1, x!!2]
  | x!!1 == minimum x = [x!!1] ++ orderTwo [x!!0, x!!2]
  | x!!2 == minimum x = [x!!2] ++ orderTwo [x!!0, x!!1]
--}

orderThree:: Ord t => [t] -> [t]
orderThree x = 
  let 
    minimumElement = minimum x
    theRestOrdered = orderTwo (filter (/=minimum x) x)
  in [minimumElement] ++ theRestOrdered

