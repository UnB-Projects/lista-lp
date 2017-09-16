is_upper c | c >= 'A' && c <= 'Z' = True
           | otherwise = False
------------------------------------------
resto_string [] = []
resto_string (x:xs) | x /= ' ' = x:(resto_string (xs))
                    | otherwise = resto_string []
------------------------------------------
procura_nomes [] = []
procura_nomes (x:xs) | is_upper x = (resto_string (x:xs)) : procura_nomes (xs)
                     | otherwise = procura_nomes xs