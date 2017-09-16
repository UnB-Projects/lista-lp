tamanho_lista [] = 0
tamanho_lista (x:xs) = 1 + tamanho_lista xs
-------------------------------------------
total_lista [] = 0
total_lista (x:xs) = x + total_lista xs
-------------------------------------------
media_lista [] = 1
media_lista (x:xs) = total_lista (x:xs) / tamanho_lista (x:xs)
--------------------------------------------------------------
verifica_lista [] = []
verifica_lista (x:xs) | (x < media) = x:verifica_lista xs
                      | otherwise = verifica_lista xs
                      where
                        media = media_lista(x:xs)
