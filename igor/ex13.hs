compara_n_com_lista n []     = False
compara_n_com_lista n (x:xs) = (n == x) || compara_n_com_lista n xs
--------------------------------------------------------------------
procura_posicao n [] = -1
procura_posicao n (x:xs) | (compara_n_com_lista n (x:xs) == False) = -1 
                         | (x /= n)  = 1 + procura_posicao n xs
                         | otherwise = 1 + procura_posicao n []