-- Exercise 1
sumsq :: Integral a => a -> a
sumsq n = foldr op 0 [1..n]
    where op x y = x*x + y

lengthr :: [Int] -> Int
lengthr = foldr (\x y -> 1 + y) 0

minlist :: [Int] -> Int
minlist = foldr1 min

myreverse :: [a] -> [a]
myreverse = foldr (\x y -> y ++ [x]) []

remove :: Eq a => [a] -> [a] -> [a]
remove fcs = foldr (\x result -> findElem x fcs ++ result) []
    where findElem x ys 
            | x `elem` ys = []
            | otherwise = [x]

remdupsr :: Eq a => [a] -> [a]
remdupsr [] = []
remdupsr ys = foldr joinr [] ys

joinr :: Eq a => a -> [a] -> [a]
joinr x [] = [x]
joinr x xs
    | x == head xs = xs
    | otherwise = x : xs
