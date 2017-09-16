fat :: Integer -> Integer -- declaracao

fat n = if n == 0         -- definicao
        then 1
        else n*fat(n-1)

---------------------------------------

tamanho :: String -> Int
tamanho s = if null s
            then 0
            else 1 + tamanho (tail s)

---------------------------------------

soma :: [Int] -> Int
soma []      = 0
soma (x:xs)  = x + soma xs