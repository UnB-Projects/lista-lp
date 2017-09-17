--Ex13.hs
--Posicao de um elemento na lista

elementIndex x (y:ys)	| x/=y 		= 1 + elementIndex x ys
						| otherwise	= 0
elementIndex x []		= -99