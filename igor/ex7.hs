divide n [] = []
divide n (x:xs) | (n `mod` x == 0) = x:(divide n xs)
                | otherwise = divide n xs 

divisores n = divide n [1..n]