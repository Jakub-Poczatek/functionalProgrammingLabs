-- Exercise 1
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
sumdown :: Int -> Int
sumdown 0 = 0
sumdown n = n + sumdown (n-1)

-- Exercise 2
exponention :: Int -> Int -> Int
exponention 0 _ = 0
exponention _ 0 = 1
exponention a b = a * exponention a (b-1)

-- Exercise 3
fibonacci :: Integral a => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

-- Exercise 4
myInit :: [a] -> [a]
myInit [x] = []
myInit (x : xs) = x: myInit xs

-- Exercise 5
-- 1. myAnd
myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x: xs) = x && myAnd xs 

-- 2. myConcat
myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (x:xs) = x ++ myConcat xs

-- 3. myReplicate
myReplicate :: Int -> a -> [a]
myReplicate 0 _ = []
myReplicate n a = a : myReplicate (n-1) a

-- 4. myNth
myNth :: [a] -> Int -> a
myNth (x:xs) 0 = x
myNth (x:xs) n = myNth xs (n-1)

-- 5. myElem
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem a (x : xs) 
    | a == x = True
    | otherwise = myElem a xs

-- Exercise 6
-- 1. sum
mySum :: Num a => [a] ->  a
mySum [] = 0
mySum (x : xs) = x + mySum xs

-- 2. take
myTake :: Int -> [a] -> [a]
myTake 0 _ = []
myTake _ [] = []
myTake n (x : xs) = x : myTake (n-1) xs

-- 3. last
myLast :: [a] -> a
myLast [a] = a
myLast (_ : xs) = myLast xs

-- Exercise 7
merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] xs = xs
merge (x : xs) (y : ys)
    | x < y = x : merge xs (y : ys)
    | otherwise = y : merge (x : xs) ys

-- Exercise 8 (solution)
halve :: [a] -> ([a], [a])
halve [x] = ([x], [])
halve xs = (firstHalf, secondHalf)
    where
        firstHalf = take half xs
        secondHalf = drop half xs
        half = div (length xs) 2
    
msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort left) (msort right)
    where
        (left, right) = halve xs