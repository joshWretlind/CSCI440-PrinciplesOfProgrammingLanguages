multThree x y z = x*y*z

cube x = map (^3) x

removeFirstElement x = map tail x

initials x = filter (`elem` ['A'..'Z']) x

noEven x = map (filter odd) x

doubleArea h w = (multThree 2) h w

multThreeF :: Float -> Float -> Float -> Float
multThreeF x y z = x*y*z

tenPctDiscount :: Float -> Float -> Float
tenPctDiscount x y = ((multThreeF 0.1) x) y

pctDiscount x = multThreeF x
