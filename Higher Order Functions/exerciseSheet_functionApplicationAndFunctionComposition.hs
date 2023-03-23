-- Exercise 1
bigCubes :: [Int] -> [Int]
bigCubes xs = filter (>500) $ map (^3) xs

-- Exercise 2
lottaBiggest :: [Int] -> [Int]
lottaBiggest xs = replicate 4 $ maximum xs

lottaBiggest' :: [Int] -> [Int]
lottaBiggest' = replicate 4 . maximum

-- Exercise 3
powers :: Int -> [Int]
powers x = map ($ x) [(^2), (^3), (^4)]

-- Exercise 4
calcBill :: [Float] -> [Float] -> [Float]
calcBill as ps = map (*1.04) $ zipWith (+) as $ zipWith (*) as ps