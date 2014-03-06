convertToOz :: [Char] -> Int -> Int
convertToOz "gallons" x = x*128
convertToOz "pints" x = x*16
convertToOz "quarts" x = x*32
convertToOz "cups" x = x*8

firstPair :: [Int] -> [Int] -> (Int,Int)
firstPair (x:xs) (y:ys) = (x,y)

multFirstTwo :: [Int] -> [Int]
multFirstTwo (x:y:xs) = [x*y] ++ xs

--area :: (Int, Int) -> [Char]
--area (x,y) = "The Area of a rectangle with height " ++ show y::Char ++ " and width " ++ show y::Char

cookTemp x 
  | x == "slow" = 350
  | x == "Medium" = 400
  | x == "Get 'Er Done" = 450
  | otherwise = 250

cookTemp2 x
  | x <= 350 = "Slow"
  | x <= 400 = "Medium"
  | x <= 450 = "Get 'Er Done"
  | otherwise = "Burnt"
 
greet x = "Hello " ++ firstName ++ " " ++ lastName
  where
    firstName = head x
    lastName = last x

greet2 x = 
  let
    firstName = head x
    lastName = last x
  in "Hello " ++ firstName ++ " " ++ lastName
