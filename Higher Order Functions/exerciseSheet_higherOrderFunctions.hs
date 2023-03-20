import Data.Char (toUpper)

-- Corrected 

-- Exercise 1
-- map f (filter p xs)

-- Exercise 2

all' :: (a -> Bool) -> [a] -> Bool
--all' _ [] = True
--all' p (x:xs) = p x && all' p xs 
all' p = and . map p

any' :: (a -> Bool) -> [a] -> Bool
--any' _ [] = True
--any' p (x:xs) = p x || any' p xs
any' p = or . map p

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []
takeWhile' p (x:xs) 
    | p x = x : takeWhile' p xs
    | otherwise = []

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' p (x:xs)
    | p x = dropWhile' p xs
    | otherwise = x:xs

-- Exercise 3 -- I DON'T UNDERSTAND

mapF :: (a -> b) -> [a] -> [b]
mapF f = foldr (\x xs -> f x : xs) []

filterF :: (a -> Bool) -> [a] -> [a]
filterF p = foldr (\x xs -> if p x then x : xs else xs) []

-- Exercise 4
capitalises :: String -> String
capitalises = map toUpper

-- Exercise 5
squareall :: [Int] -> [Int]
squareall = map (^2)

-- Exercise 6
nestedreverse :: [String] -> [String]
nestedreverse = reverse . map reverse

-- Exercise 7
atfront :: a -> [[a]] -> [[a]]
atfront a = map (a:)

-- Exercise 8
lengths :: [String ] -> [Int]
lengths = map length

-- Exercise 9
sumsq :: Int -> Int
sumsq x = sum $ map (^2) [1..x]

-- Exercise 10
filter p = concat.map box 
    where box x = if p x then [x] else []

-- Exercise 11
wvowel :: String -> String
wvowel = concatMap removeV 
    where removeV c = if c `elem` "aioue" then [] else [c]

-- Exercise 12
wiv :: [String] -> [String]
wiv = map wvowel