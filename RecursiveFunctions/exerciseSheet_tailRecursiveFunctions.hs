-- Exercise 1
fibT :: Int -> Int
fibT n = helper n 0 1
    where
        helper 0 a _ = a
        helper n a b = helper (n-1) b (a+b)

-- Exercise 2
myMult :: Int -> Int -> Int
myMult a 1 = a
myMult 1 b = b
myMult a b = helper a b 0
    where
        helper 0 b acc = acc
        helper a b acc = helper (a-1) b (acc+b)

-- Exercise 3
myReverse :: [a] -> [a]
myReverse xs = helper xs []
    where
        helper [] acc = acc
        helper (x: xs) acc = helper xs (x : acc)