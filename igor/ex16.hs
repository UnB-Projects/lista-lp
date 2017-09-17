divide n [] = []
divide n (x:xs) | (n `mod` x == 0) = x:(divide n xs)
                | otherwise = divide n xs 
----------------------------------------------------
divisores n = divide n [1..n]
----------------------------------------------------
primos [] = []
primos (x:xs) | (divisores x == [1,x]) = x:(primos xs)
              | otherwise = primos xs
-------------------
intervalo_primos n  = primos [1..n]