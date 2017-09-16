mesmos_elementos [] []     = True
mesmos_elementos (x:xs) [] = False
mesmos_elementos [] (y:ys) = False
mesmos_elementos (x:xs) (y:ys) | (tamanho_lista (x:xs)) == (tamanho_lista (y:ys)) = (compara_listas (x:xs) (y:ys))
                               | otherwise = False
-------------------------------------------------------------------------------------
tamanho_lista [] = 0
tamanho_lista (x:xs) = 1 + tamanho_lista xs
---------------------------------
compara_listas [] (y:ys)     = True
compara_listas (x:xs) (y:ys) | compara_n_com_lista x (y:ys) = compara_listas xs (y:ys)
                             | otherwise = False 
--------------------------------------------------------------------------------------
compara_n_com_lista n []     = False
compara_n_com_lista n (w:ws) = (n == w) || compara_n_com_lista n ws
