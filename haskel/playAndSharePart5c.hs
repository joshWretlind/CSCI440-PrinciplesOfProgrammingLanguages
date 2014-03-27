bigCubes x = filter (>500) $ map (^3) x

lottaBiggest x = replicate 4 $ maximum x

powers x = map ($x) [(^2),(^3),(^4)]

calc (x,y) = ((*x) $ (+1) $ y) + ((*0.04) $ (*x) $ (+1) $ y)

calcBill amt pct = map calc $ zip amt pct
