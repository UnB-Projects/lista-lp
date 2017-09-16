igual (x:[]) = True
igual (x:y:xs)
			|x == y = igual(y:xs)
			|otherwise = False