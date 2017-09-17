aparece :: Int -> [Int] -> Int
aparece a [] = 0
aparece a (x:xs)
	| a == x = 1 + aparece a xs
	| otherwise = aparece a xs