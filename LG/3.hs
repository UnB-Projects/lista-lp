resto :: Int -> Int -> Int
resto x y
	| (x < y) = x
	| (x > y) = x `mod`y
	| x == y = 0