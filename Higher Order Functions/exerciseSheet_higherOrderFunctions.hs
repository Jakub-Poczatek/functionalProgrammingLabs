import Data.Char (toUpper)
-- Exercise 1
-- map f (filter p xs)

-- Exercise 2

all' :: (a -> Bool) -> [a] -> Bool
all' _ [] = True
all' p (x:xs) = p x && all' p xs

any' :: (a -> Bool) -> [a] -> Bool
any' _ [] = True
any' p (x:xs) = p x || any' p xs

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []
takeWhile' p (x:xs) 
    | not (p x) = []
    | p (head xs) = x : takeWhile' p xs
    | otherwise = [x]

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' p (x:xs)
    | not (p x) = x:xs
    | p (head xs) = dropWhile' p xs
    | otherwise = xs

-- Exercise 3 -- I DON'T UNDERSTAND

mapF :: (a -> b) -> [a] -> [b]
mapF f = foldr (\x acc -> f x : acc) []

filterF :: (a -> Bool) -> [a] -> [a]
filterF p = foldr (\x acc -> if p x then x : acc else acc) []

-- Exercise 4
capitalises :: String -> String
capitalises cs = map toUpper cs

-- Exercise 5
squareall :: [Int] -> [Int]
squareall xs = map (^2) xs

-- Exercise 6
nestedreverse :: [String] -> [String]
nestedreverse cs = reverse (map reverse cs)

-- Exercise 7
atfront :: a -> [[a]] -> [[a]]
atfront a as = map (a:) as

-- Exercise 8
