extensao [] = "Nenhum tipo encontrado"
extensao (x:xs) | (x == '.') && (xs /= []) = xs
                | otherwise = extensao xs
