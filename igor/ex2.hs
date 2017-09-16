compara_n_com_lista n []     = False
compara_n_com_lista n (w:ws) = (n == w) || compara_n_com_lista n ws
-------------------------------------------------------------------
[] /\ []                                        = []
(x:xs) /\ []                                    = []
[] /\ (y:ys)                                    = []
(x:xs) /\ (y:ys) | compara_n_com_lista x (y:ys) = x:(xs /\ (y:ys))
                 | otherwise                    = xs /\ (y:ys)