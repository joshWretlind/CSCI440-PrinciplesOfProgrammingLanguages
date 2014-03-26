module ChapterFive_Pt1 where

convert input factor = input*factor

doMetersToFeet = convert 3.28084

doMilesToKM = convert 1.607

calcSalesTax x y = x*y

doGolden = calcSalesTax 0.03

doBoulder = calcSalesTax 0.0341

swap (a,b) = (b,a)

swapAll x = map swap x

applyIfTrue x y z 
  | z = x y
  | otherwise = 0
  
calcArea x y = x*y

calcAreas x y = zipWith calcArea x y 
