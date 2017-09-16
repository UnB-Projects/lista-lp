dobro_soma [] = 0
dobro_soma [n] = 2*n
dobro_soma (x:xs) = 2*x + dobro_soma(xs)