divisibleBy x y = (mod y x) == 0

--map (divisibleBy 2) [2,3,4]

divisibleByFive = divisibleBy 5

--map divisibleByFive [2,4,5]

isDivisibleByFive = map (\x -> (mod x 5) == 0)
