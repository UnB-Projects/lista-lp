--ex14.hs
-- Funcao recebe lista e divide em uma tupla de pares e impares

odds 	:: [Int] -> [Int]
evens 	:: [Int] -> [Int]

odds (x:xs)		| (x`mod`2) /= 0	= x: odds xs
				| otherwise			= odds xs
odds []			= []
evens (x:xs)	| (x`mod`2) == 0	= x: evens xs
				| otherwise			= evens xs
evens []		= []

oddsAndEvens (x:xs)	= unzip $ (zip  (odds (x:xs)) (evens (x:xs))) 