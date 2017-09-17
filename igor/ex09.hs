ponto p | p == '.'  = True
        | otherwise = False
----------------------------------
extensao [] = "Nome de arquivo invalido"
extensao (x:xs) | (ponto x) && (xs /= [])  = xs
                | otherwise = extensao xs