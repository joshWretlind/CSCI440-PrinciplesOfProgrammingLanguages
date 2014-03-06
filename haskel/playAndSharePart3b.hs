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

myInfo x 
  | length x == 1 = firstName ++ " lives somwehre"
  | length x == 2 = firstName ++ " lives in " ++ city
  | otherwise = "ERROR"
  where
    firstName = head (head x)
    city = head (last x)
    
sumUsage x = sum [mb | kb <- x, let mb = kb/1024] 
