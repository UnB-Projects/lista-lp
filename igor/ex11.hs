tamanho_lista [] = 0
tamanho_lista (x:xs) = 1 + tamanho_lista xs
-------------------------------------------
total_lista [] = 0
total_lista (x:xs) = x + total_lista xs
-------------------------------------------
media_lista [] = 1
media_lista (x:xs) = total_lista (x:xs) / tamanho_lista (x:xs)
--------------------------------------------------------------
compara_media average [] = []
compara_media average (x:xs) | (average < x) = x:compara_media average xs
                             | otherwise     = compara_media average xs
--------------------------------------------------------------
acima_da_media [] = []
acima_da_media (x:xs) = compara_media media lista
                        where
                          media = media_lista (x:xs)
                          lista = (x:xs)