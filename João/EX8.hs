verificaElemento (x:xs) (y:ys)
	| x == y = True
	| otherwise = verificaElemento (x:xs) ys

verificaElemento (x:xs) [] = False

verificaListas (x:xs) ys
	| verificaElemento (x:xs) ys == True = verificaListas xs ys
	| otherwise = False

verificaListas [] ys = True 

verificaIgualdade xs ys = verificaListas xs ys && verificaListas ys xs