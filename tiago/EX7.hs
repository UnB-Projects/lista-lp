recursivo :: Int -> Int -> [Int]
recursivo _ 0 = []
recursivo original n | ((original)`mod`(n) == 0) = (n):recursivo original (n-1)
                     | otherwise = recursivo original (n-1)

divisores :: Int -> [Int]
divisores n = recursivo n n
