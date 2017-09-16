resto x y 
	| y /= 0 = x `mod` y
	| otherwise = 0
retornarDivisores n = case n of
	1 -> [1]
	(c) |resto n c == 0 -> c:retornarDivisores x 
	  	|otherwise -> retornarDivisores x
			where
			 x = c - 1
			 
