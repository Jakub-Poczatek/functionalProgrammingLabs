{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use id" #-}
-- Exercise 1

-- 1. \xy.xz
-- (b) \mn.mz -- Corect

-- 2. \xy.xxy
-- (b) \x.(\y.xy) -- Wrong
-- (c) \a(\b.aab)

-- 3. \xyz.zx
-- (b) \tos.st -- Corect

-- Exercise 2
-- 1, 2, 3, 4 -- Corect

-- Exercise 3
-- mth 3 :: Num a => a -> a -- Wrong
-- mth 3 :: Num a => a -> a -> a 

-- Exercise 4
-- 1)
lambdaId a = (\x -> x) a -- Corect

-- 2)
lambdaDouble a = (\x -> x * 2) a -- Corect

-- 3)
lambdaMult a b = (\x -> (\y -> x * y)) a b -- Corect

-- 4)
lambdaIfElse a b = (\ x y -> 
    if x < y then -1
    else if x == y then 0
    else 1) a b -- Corect

-- Exercise 5
addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f = (\x -> x + 1) -- Corect

-- Exercise 6
--addFive :: Num a => a -> a -> a
addFive a b = (\x -> (\y ->
    if x > y then x
    else y) ) a b + 5 -- Correct

-- Exercise 7
myAbs a = (\x ->
    if x < 0 then (-x)
    else x) a -- Correct

myMax a b = (\x -> (\y ->
    if x > y then x
    else y)) a b -- Correct

myMin a b = (\x -> (\y ->
    if x < y then x
    else y)) a b -- Correct

-- Exercise 8 Solution

-- And
-- \a.\b. a b FALSE
-- \a.\b, a TRUE b
