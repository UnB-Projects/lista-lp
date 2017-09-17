maiuscula x | (x>='A' && x<='Z') = True
            | otherwise = False

procura_resto [] = []
procura_resto (x:xs) | (x>='a' && x<='z') = x:procura_resto xs
                     | maiuscula x = procura_nome (x:xs)
                     | (x == ' ') = procura_nome (x:xs) 
                     | otherwise = procura_resto xs

procura_nome [] = []
procura_nome (x:xs) | maiuscula x = ' ':x:procura_resto xs
                    | otherwise = procura_nome xs
