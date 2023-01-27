-- Exercise 1

[a, 'b', 'c']
Invalid

('a', 'b', 'c')
(Char, Char, Char)

[(False, '0'), (True, '1')]
[(Bool, Char)]

(['1', '0'], ['0', '1'])
([Char], [Char])

[tail, init, reverse]
[[a] -> [a]]  

-- Exercise 2

bools :: [Bool]
let bools = [True, False]

nums :: [[Int]]
let nums = [[1, 2], [3, 4]]

add :: Int -> Int -> Int -> Int
add a b c = a + b + c

copy :: a -> (a, a)
copy a = (a, a)

apply :: (a -> b) -> a -> b
apply f(a) = f(a)  

-- Exercise 3

second xs = head (tail xs)
second :: [a] -> a

swap (x, y) = (y, x)
swap :: (a, b) -> (b, a)

pair x y = (x, y)
pair :: a -> b -> (a, b)

double x = x*2
double :: Num => a -> a

pallindrome xs = reverse xs == xs
pallindrome :: Eq a => [a] -> Bool

twice f x = f (f x)
twice :: (t -> t) -> t -> t