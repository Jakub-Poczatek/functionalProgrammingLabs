-- Exercise 1
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
add1 :: Int -> Int
add1 a = a + 1 -- Correct

-- Exercise 2
always0 :: Int -> Int
always0 _ = 0 -- Correct


-- Exercise 3
subtract' :: Int -> Int -> Int
subtract' a b = a - b -- Correct

-- Exercise 4
addmult :: Int -> Int -> Int -> Int
addmult a b c = (a + b) * c -- Correct

-- Exercise 5
greaterThan0 :: Int -> String
greaterThan0 a
    | a > 0 = "Yes!"
    | otherwise = "No!" -- Correct

-- Exercise 6
pushOut :: Int -> Int
pushOut a = if a > 0 then a + 1
    else if a < 0 then a - 1
    else 0 -- Correct

pushOut' :: Int -> Int
pushOut' a
    | a > 0 = a + 1
    | a < 0 = a - 1
    | otherwise = 0 -- Correct

-- Exercise 7
halve :: [a] -> ([a], [a])
halve a = splitAt(length a `div` 2) a -- Correct***

-- Exercise 7 Solution
halve xs = (take half xs, drop half xs) where
    half = length xs `div` 2

-- Exercise 8
thirdElement :: [a] -> a
thirdElement xs = xs !! 2 -- Correct
thirdElement (_ : _ : c : _) = c -- Correct
thirdElement as = head (tail (tail as)) -- Correct

-- Exercise 9
safeTailConditional :: [a] -> [a]
safeTailConditional as = if null as then [] else tail as -- Correct

safeTailGuarded :: [a] -> [a]
safeTailGuarded as 
    | null as = []
    | otherwise = tail as -- Correct

safeTailPattern :: [a] -> [a]
safeTailPattern [] = []
safeTailPattern (_:as) = as -- Correct

-- Exercise 10
myOr :: Bool -> Bool -> Bool
myOr True True = True
myOr True False = True
myOr False False = False -- Wrong

-- Exercise 10 Solution

False `myOr` False = False
_ `myOr` _ = True

myOr' :: Bool -> Bool -> Bool
False `myOr'` b = b
True `myOr'` _ = True

-- Exercise 11
lucky :: Integral a => a -> String
lucky a
    | a == 7 = "Lucky you... Proceed directly to buy a lottery ticket"
    | a == 13 = "You, sadly are quite unlucky. Do not, under any circumstances, invest money today."
    | otherwise = "Mmmm... Can't really say...." -- Wrong

-- Exercise 11 Solution

luckySol :: Integral a => a-> String
luckySol 7 = "Lucky you.. Proceed directly to buy a lottery ticket."
luckySol 13 = "You, sadly are quite unlucky. Do not, under any circumstances, invest money today "
luckySol _ = "Mmmm.... Can't really say...."

-- Exercise 12
first :: (a, b, c) -> a
first (a, _, _) = a -- Correct

second :: (a, b, c) -> b
second (_, b, _) = b -- Correct

third :: (a, b, c) -> c
third (_ , _, c) = c -- Correct

-- Exercise 13
luhnDouble :: Int -> Int
luhnDouble a
    | doubledA > 9 = doubledA - 9
    | otherwise = doubledA
    where doubledA = a * 2 -- Correct

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = result `mod` 10 == 0
    where result = d + luhnDouble c + b + luhnDouble a -- Correct

-- Exercise 14
luhnGetCheck :: Int -> Int -> Int -> Int
luhnGetCheck a b c = 10 - (checkDigit `mod` 10)
    where checkDigit = luhnDouble c + b + luhnDouble a -- Wrong

-- Exercise 14 Solution
luhnGetCheckSol :: Int-> Int -> Int -> Int
luhnGetCheckSol a b c = (10 - (luhnSum `mod` 10)) `mod` 10 where 
    luhnSum = luhnDouble a + b + luhnDouble c