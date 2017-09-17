checaExt :: String -> String
checaExt [] = "String vazia"
checaExt (x:xs)
	| x == '.' = xs
	|otherwise = checaExt xs 