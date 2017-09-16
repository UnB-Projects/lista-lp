aparicoes n [] = 0
aparicoes n (x:xs) | (n == x)  = 1 + aparicoes n xs
                   | otherwise = aparicoes n xs