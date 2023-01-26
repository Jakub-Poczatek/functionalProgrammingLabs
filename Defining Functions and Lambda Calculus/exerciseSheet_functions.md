# Exercise 1
## Write a function named "add1" that takes an Int and returns an Int that is one greater than its input. For example, if we compute add1 5, we should get 6. If you want to write a type signature for add1, it would be:
`
add :: Int -> Int
`
<br>
`
add :: Int -> Int
add1 a = a + 1
`
<br>
# Exercise 2
## Write a function:
`
always0 :: Int -> Int
`
## The return value should always be 0.
<br>
always0 :: Int -> Int
always0 a = 0
<br>
# Exercise 3
## Write a function:
`
addmult :: Int -> Int -> Int -> Int
`
## that takes three numbers. Let's call them p, q, and r. addmult should add p and q together and then multiply the result by r. 
<br>
addmult :: Int -> Int -> Int -> Int
addmult a b c = (a + b) * c