import qualified Data.Char as C

pigLatin (x:xs)  
  | isVowel = (x:xs) ++ "way"
  | otherwise = xs ++ [x] ++ "ay"
  where
    isVowel = elem x ['A','a','E','e','I','i','O','o','U','u']

pigglyBreaking = unwords.map pigLatin.words
    
piggly = interact pigglyBreaking

ceaser :: Int -> Char -> Char
ceaser seed char
  | elem char ['a'..'z'] && ((fromEnum char) + seed -1) >  (fromEnum 'z') = toEnum((fromEnum 'a') + (((fromEnum char) + seed -1 ) - (fromEnum 'z')))
  | elem char ['a'..'z'] && ((fromEnum char) + seed -1) <= (fromEnum 'z') = toEnum ((fromEnum char) + seed)
  | elem char ['A'..'Z'] && ((fromEnum char) + seed -1) >  (fromEnum 'Z') = toEnum((fromEnum 'A') + (((fromEnum char) + seed -1 ) - (fromEnum 'Z')))
  | elem char ['A'..'Z'] && ((fromEnum char) + seed -1) <= (fromEnum 'Z') = toEnum ((fromEnum char) + seed)
  | otherwise = char

ceaserLine seed string = [ceaser seed i | i <- string]

encrypt seed = do
  input <- getLine
  putStrLn (unwords (map (ceaserLine seed) (words input)))

encryptFile seed = do
  fileContents <- readFile "encryptMe.txt.txt"
  putStr (unlines ((map (ceaserLine seed) (lines fileContents))))
