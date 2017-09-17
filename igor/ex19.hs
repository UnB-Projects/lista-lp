eh_igual [] [] = True
eh_igual [] (y:ys) = True
eh_igual (x:xs) [] = False
eh_igual (x:xs) (y:ys) | (x == y)  = eh_igual (xs) (ys)
                       | otherwise = False
------------------------------------------------------------------------
encontra_palavra (x:xs) [] = False
encontra_palavra (x:xs) (y:ys) | eh_igual (x:xs) (y:ys) = True
                               | otherwise = encontra_palavra (x:xs) (ys)
-------------------------------------------------------------------------
first_half (x:xs) (y:ys) | eh_igual (x:xs) (y:ys) = []
                         | otherwise = y:(first_half (x:xs) (ys))
-------------------------------------------------
return_second_half [] (y:ys) = (y:ys)
return_second_half [] [] = []
return_second_half (x:xs) (y:ys) = return_second_half (xs) (ys) 
-------------------------------------------------
second_half (x:xs) (y:ys) | eh_igual (x:xs) (y:ys)  = return_second_half (x:xs) (y:ys)
                          | otherwise               = second_half (x:xs) (ys)
-------------------------------------------------
troca_palavra (x:xs) (y:ys) (z:zs) | encontra_palavra (y:ys) (z:zs) == False = (z:zs)
                                   | otherwise = first_half (y:ys) (z:zs) ++ (x:xs) ++ second_half (y:ys) (z:zs)
