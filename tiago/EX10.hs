contanumero_na_lista n [] = 0
contanumero_na_lista n (x:xs) | (x==n) = 1 + contanumero_na_lista n xs
                              | otherwise = contanumero_na_lista n xs
