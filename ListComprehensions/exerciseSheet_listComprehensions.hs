import Data.Char
-- Exercise 1

-- [x | x <- [1..6]]

-- Exercise 2

-- [x * 10 | x <- [1..6]

-- Exercise 3

-- [(x, x) | x <- [1..4]]

-- Exercise 4

-- [(x, x+1) | x < [1..4]]

-- Exercise 5
myConstFunc = [(x, 1) | x <- [1..5]]

-- Exercise 6
squares = [(x, x^2) | x <- [1..10]]

-- Exercise 7

-- f1
-- [(1, 4), (1, 5), (2, 4), (2, 5), (3, 4), (3, 5)]

-- f2
-- [(1, 4), (2, 4), (3, 4), (1, 5), (2, 5), (3, 5)]

-- f3
-- [(4, 1), (4, 2), (4, 3), (5, 1), (5, 2), (5, 3)]

-- Exercise 8

-- [8]

-- Exercise 9
doubleAll xs = [x * 2 | x <- xs]

-- Exercise 10
capitalize xs = [toUpper x | x <- xs]

-- Exercise 11
sigma = sum [x^2 | x <- [1..100]]

-- Exercise 12
sigma' n = sum [x^2 | x <- [1..n]]

-- Exercise 13
matches x xs = [a | a <- xs, x == a]

elem' x xs = matches x xs /= []

-- Exercise 14
grid x y = [(a, b) | a <- [0..x], b <- [0..y]]

-- Exercise 15
square x = [(a, b) | a <- [0..x], b <- [0..x], a /= b]

-- Exercise 16
myReplicate a b = [b | _ <- [1..a]]

-- Exercise 17
pyths a = [(x, y, z) | x <- [1..a], y <- [1..a], z <- [1..a], (x^2 + y^2) == z^2]

-- Exercise 18
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects n = [x | x <- [1..n], sum (factors x) - x == x]