import qualified Data.Text as T
greeting = do
	putStrLn "Enter your name as last, First"
	names <- getLine
	let splitNames = T.splitOn (T.pack ",") (T.pack names)
	putStrLn $ "Hello " ++ T.unpack (last splitNames)
	putStrLn $ "Do you happen to know Joe " ++ T.unpack (head splitNames)

reverseMe = do 
	x <- getLine
	putStrLn $ unwords $ reverse $ words x

sayHi = do
	putStr "What is your name? "
	name <- getLine
	if(name == "Bilbo") then
		putStrLn "So nice to meet you!"
	else
		return()
	putStrLn "What's up?"

calcAreas = zipWith (*)

printAreas x y = do 
	mapM_ print (calcAreas x y)

