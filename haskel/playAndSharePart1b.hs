evenCubes x = [i^3 | i <- x, (mod i 2) == 0]

onlyBig x y = [i | i <- x, (i >= y)]

noDiagonal x = [(i,j) | i <- x, j <- x, i /= j]

diagonal x = [(i,i) | i <- [0..x]]

countOdd x = sum [1 | i <- x, (mod i 2) == 1]

evenOddPairs x y = [(i, j) | i <- x, j <- y, ((mod i 2) == 0), ((mod j 2) == 1)]

removeDigits x = [i | i <- x, not (elem i ['0'..'9'])]

ends x = [(last i) | i <- x]
