first_half [] = []
first_half (x:xs) | x /= '/'  = x:(first_half xs)
                  | otherwise = []
-------------------------------------------------
second_half [] = []
second_half (x:xs) | x == '/'  = xs
                   | otherwise = second_half xs
-------------------------------------------------
quebra [] = ([],[])
quebra (x:xs) = ((first_half (x:xs)), (second_half (x:xs)))