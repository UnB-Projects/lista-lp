resto x y 
	| y /= 0 = x `mod` y
	| otherwise = 0
bissexto ano
	| ((resto ano 4 == 0  && resto ano 100 /= 0) || resto ano 400 == 0) = True
	| otherwise = False 