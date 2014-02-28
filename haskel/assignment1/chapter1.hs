receipt = [(3, 4), (5, 6)]

negsInList x = sum [1 | i <- x, (i < 0)]

oddsInList x = sum [1 | i <- x, (mod i 2) == 1]

capsInList x = sum [1 | i <- x, elem i ['A'..'Z']]

sumOdd x = sum [i | i <- x, (mod i 2) == 1]

getQuantities x = [ fst i | i <- x]

getPrices x = [ snd i | i <- x]

getTotal x = [(fst i) * (snd i) | i <- x ]

doubleAll x = [[j*2 | j <- i] | i <- x]

doubleFirstList x = [ 2*i | i <- (head x)]

doubleSecondList x = [ 2*i | i <- (x !! 1)]

sumListItems x = [sum([j | j <- i]) | i <- x]
