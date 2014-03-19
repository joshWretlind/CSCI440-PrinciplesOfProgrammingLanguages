module ChapterFour where


minimum' [] = error "Can't take min of empty list"
minimum' [x] = x
minimum' (x:xs) = min x (minimum' xs)

calcSum [] = 0
calcSum [x] = x
calcSum (x:xs) = x + calcSum xs

count [] = 0
count [x] = 1
count (x:xs) = 1 + count xs

makeRange x y
  | x == y = [x]
makeRange x y = x:(makeRange (x+1) y)

makeReverseRange x y 
  | x == y = [x]
makeReverseRange x y = y:(makeReverseRange x (y-1))

notInList _ [] = True
notInList x [y] = x /= y
notInList x (y:ys) = (x /= y) && (notInList x ys)

square :: Int -> Int
square x = x^2

squareAll [] = []
squareAll (x:xs) = (square x):(squareAll xs)

squareIfEven [] = []
squareIfEven (x:xs) = 
  if mod x 2 == 0
    then (square x):(squareIfEven xs)
  else 
    x:(squareIfEven xs)
  
squareOnlyEven [] = []
squareOnlyEven (x:xs) = [square i | i <- [x], (mod i 2) == 0] ++ squareOnlyEven xs

mergeSort [] x = x
mergeSort x [] = x
mergeSort (x:xs) (y:ys) 
  | x < y = x:(mergeSort xs (y:ys))
  | otherwise = y:(mergeSort (x:xs) ys)

subList _ _ [] = []
subList x y z 
  | x < 0 = error " start index needs to be greater than or equal to 0"
  | y < 0 = error " end index needs to be greater than or equal to 0"
  | x >= length z = []
subList _ 0 _ = []
subList x y (z:zs) = ((z:zs)!!x):(subList x (y-1) (zs))
