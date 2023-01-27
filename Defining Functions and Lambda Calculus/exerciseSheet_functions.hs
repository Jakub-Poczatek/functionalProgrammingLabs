-- Exercise 1
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use guards" #-}
add1 :: Int -> Int
add1 a = a + 1

-- Exercise 2
always0 :: Int -> Int
always0 a = 0

-- Exercise 3
subtract' :: Int -> Int -> Int
subtract' a b = a - b

-- Exercise 4
addmult :: Int -> Int -> Int -> Int
addmult a b c = (a + b) * c

-- Exercise 5
greaterThan0 :: Int -> String
greaterThan0 a
    | a > 0 = "Yes!"
    | otherwise = "No!"

-- Exercise 6
pushOut :: Int -> Int
pushOut a = if a > 0 then a + 1
    else if a < 0 then a - 1
    else 0

pushOut' :: Int -> Int
pushOut' a
    | a > 0 = a + 1
    | a < 0 = a - 1
    | otherwise = 0

-- Exercise 7
halve :: [a] -> ([a], [a])
halve a = splitAt(length a `div` 2) a

-- Exercise 8
--third :: [a] -> a
--third (x:xs)
--    | length xs >= 2 = 

-- Exercise 9
safeTailConditional :: [a] -> [a]
safeTailConditional a = if null a then [] else tail a

safeTailGuarded :: [a] -> [a]
safeTailGuarded a 
    | null a = []
    | otherwise = tail a

--safeTailPattern :: [a] -> [a]
--safeTailPattern a
--    | null a = []
--    | otherwise (: as)

-- Exercise 10


-- Exercise 11
lucky :: Integral a => a -> String
lucky a
    | a == 7 = "Lucky you... Proceed directly to buy a lottery ticket"
    | a == 13 = "You, sadly are quite unlucky. Do not, under any circumstances, invest money today."
    | otherwise = "Mmmm... Can't really say...."

-- Exercise 12
first :: (a, b, c) -> a
first (a, _, _) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_ , _, c) = c

-- Exercise 13
luhnDouble :: Int -> Int
luhnDouble a
    | doubledA > 9 = doubledA - 9
    | otherwise = doubledA
    where doubledA = a * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = result `mod` 10 == 0
    where result = d + luhnDouble c + b + luhnDouble a

-- Exercise 14
luhnGetCheck :: Int -> Int -> Int -> Int
luhnGetCheck a b c = 10 - (checkDigit `mod` 10)
    where checkDigit = luhnDouble c + b + luhnDouble a