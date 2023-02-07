{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use id" #-}
-- Exercise 1

-- 1. \xy.xz
-- (b) \mn.mz

-- 2. \xy.xxy
-- (b) \x.(\y.xy)

-- 3. \xyz.zx
-- (b) \tos.st

-- Exercise 2
-- 1, 2, 3, 4

-- Exercise 3
-- mth :: Num a => a -> a

-- Exercise 4
-- 1)
lambdaId a = (\x -> x) a

-- 2)
lambdaDouble a = (\x -> x * 2) a

-- 3)
lambdaMult a b = (\x -> (\y -> x * y)) a b

-- 4)
lambdaIfElse a b = (\ x y -> 
    if x < y then -1
    else if x == y then 0
    else 1) a b

-- Exercise 5
addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f = (\x -> x + 1)

-- Exercise 6
--addFive :: Num a => a -> a -> a
addFive a b = (\x -> (\y ->
    if x > y then x
    else y) ) a b + 5

-- Exercise 7
myAbs a = (\x ->
    if x < 0 then x * (-1)
    else x) a

myMax a b = (\x -> (\y ->
    if x > y then x
    else y)) a b

myMin a b = (\x -> (\y ->
    if x < y then x
    else y)) a b

-- Exercise 8
