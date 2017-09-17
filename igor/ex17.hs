inicio_lista [_] = []
inicio_lista (x:xs) = x:(inicio_lista xs)
-----------------------------------------------------
ultimo (x:xs) | xs == [] = x
              | otherwise = ultimo xs
------------------------------------------------------
inverso [] = []
inverso (x:xs) = (ultimo (x:xs)):(inverso (inicio_lista (x:xs)))
--------------------------------------------------
palindromo [] = True
palindromo (x:xs) = (x:xs) == inverso (x:xs)