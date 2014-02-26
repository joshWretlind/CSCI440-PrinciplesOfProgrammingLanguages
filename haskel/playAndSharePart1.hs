doubleHead x y = ((head x) * (head y))
longerList x y = 
	if length x > length y
		then x
	else
		y

isItThere list elementToFind = 
	if elem elementToFind list
		then "yes"
	else
		"no"

evenOdd x = [2,4..(2*x)] ++ [1,3..(2*x-1)]

addToTail x y = y ++ [(head x)]

replaceLast x y = (take ((length y) -1) y) ++ [(last x)]

replaceHeads x y = (tail x) ++ (tail y)

replaceList x y = x ++ (drop (length x) y)

grabIt x y z= (drop (sum (drop ((length x) - z + 1) x)) (take (sum ( take (z) x)) y))
