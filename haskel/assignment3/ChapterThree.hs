module ChapterThree where

inList :: Eq a => a -> [a] -> [a]
inList x y = [i | i <- y, elem x [i] ]

square :: Int -> Int
square x = x^2

squareEvenNumbers :: [Int] -> [Int]
squareEvenNumbers x = [square i | i <- x, (mod i 2) == 0]
