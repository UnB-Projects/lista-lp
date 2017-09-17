iguais :: [Int] -> Bool

iguais []    = True
iguais [_]   = True --elemento qualquer
iguais(x:xs) | (x == head xs) = iguais (xs)
             | otherwise = False