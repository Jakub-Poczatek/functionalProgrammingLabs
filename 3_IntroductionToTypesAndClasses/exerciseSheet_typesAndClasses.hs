-- Exercise 1

['a', 'b', 'c']
[Char] -- Correct

('a', 'b', 'c')
(Char, Char, Char) -- Correct

[(False, '0'), (True, '1')]
[(Bool, Char)] -- Correct

(['1', '0'], ['0', '1'])
([Char], [Char]) -- Correct

[tail, init, reverse]
[[a] -> [a]] -- Correct

-- Exercise 2

bools :: [Bool]
let bools = [True, False] -- Correct

nums :: [[Int]]
let nums = [[1, 2], [3, 4]] -- Correct

add :: Int -> Int -> Int -> Int
add a b c = a + b + c -- Correct

copy :: a -> (a, a)
copy a = (a, a) -- Correct

apply :: (a -> b) -> a -> b
apply f(a) = f(a)  -- Correct

-- Exercise 3

second xs = head (tail xs)
second :: [a] -> a -- Correct

swap (x, y) = (y, x)
swap :: (a, b) -> (b, a) -- Correct

pair x y = (x, y)
pair :: a -> b -> (a, b) -- Correct

double x = x*2
double :: Num => a -> a -- Correct

pallindrome xs = reverse xs == xs
pallindrome :: Eq a => [a] -> Bool -- Correct

twice f x = f (f x)
twice :: (t -> t) -> t -> t -- Correct