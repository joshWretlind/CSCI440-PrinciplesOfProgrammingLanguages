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
  | x*y <= z = "Total is low"
  | x*y <= 2*z = "Total is medium"
  | x*y <= 3*z = "Total is high"
  | otherwise = "Total is extraordinary"
  
lactate :: (Fractional a, Ord a) => a -> a -> [Char]
lactate x y 
  | x/y <= easy = "warmup"
  | x/y <= aerobic = "aerobic"
  | x/y <= steadyState = "Steady State"
  | x/y <= anaerobic = "Anaerobic"
  | x/y <= competitive = "Wow, don't do this for long"
  | otherwise = "Invalid input"
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
orderThree x
  | x!!0 == minimum x = [x!!0] ++ orderTwo [x!!1, x!!2]
  | x!!1 == minimum x = [x!!1] ++ orderTwo [x!!0, x!!2]
  | x!!2 == minimum x = [x!!2] ++ orderTwo [x!!0, x!!1]
--}

orderThree x = 
  let 
    minimumElement = minimum x
    theRestOrdered = orderTwo (filter (/=minimum x) x)
  in [minimumElement] ++ theRestOrdered

