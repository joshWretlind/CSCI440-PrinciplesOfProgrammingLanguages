convertToOz :: [Char] -> Int -> Int
convertToOz "gallons" x = x*128
convertToOz "pints" x = x*16
convertToOz "quarts" x = x*32
convertToOz "cups" x = x*8

firstPair :: [Int] -> [Int] -> (Int,Int)
firstPair (x:xs) (y:ys) = (x,y)

multFirstTwo :: [Int] -> [Int]
multFirstTwo (x:y:xs) = [x*y] ++ xs

area :: (Int, Int) -> [Char]
area (x,y) = "The Area of a rectangle with height " ++ show y::Char ++ 
            " and width " ++ show y::Char
