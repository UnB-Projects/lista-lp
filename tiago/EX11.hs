soma_lista n = foldr (+) 0 n
-----------------------------------------------------------------
tamanho_lista [] = 0
tamanho_lista (x:xs) = 1 + tamanho_lista xs
-----------------------------------------------------------------
media_lista [] = 1
media_lista (x:xs) = (soma_lista (x:xs)) / (tamanho_lista (x:xs))
-----------------------------------------------------------------
percorre_lista media_fixa [] = []
percorre_lista media_fixa (x:xs) | (x > media_fixa) = x:percorre_lista media_fixa xs
                      | otherwise = percorre_lista media_fixa xs
-----------------------------------------------------------------
verifica_maior [] = []
verifica_maior (x:xs) = percorre_lista media_fixa lista
            where
              media_fixa = media_lista (x:xs)
              lista = (x:xs)
