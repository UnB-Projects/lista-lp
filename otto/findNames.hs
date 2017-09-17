--Ex12- Nomes em uma frase
--funcao procura maisucula
--funcao procura espaco
pegaMinusc 	:: [Char] -> [Char]
pegaMaisc 	:: [Char] -> [Char]

pegaMinusc (x:xs)	| x /= ' '		= x: pegaMinusc xs
					| otherwise		= ' ': pegaMaisc xs
pegaMinusc []		= []
-------------------------------------------------------

pegaMaisc (x:xs)	| maiscX x ['A'..'Z']	= x: pegaMinusc xs
					| otherwise				= pegaMaisc xs
					where
						maiscX n (x:xs)	| n==x 		= True
										| otherwise = maiscX n xs
						maiscX n _		= False 
pegaMaisc []		= []
-------------------------------------------------------

findNames frase		= pegaMaisc frase
findNames []		= []