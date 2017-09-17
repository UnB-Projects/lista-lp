--ex16.hs
-- lista de primos ateh n

getList n	= [(n-1),(n-2)..1]
getList _	= []
--------------------------

isPrime	x (y:ys)	| ((x`mod`y) == 0) && (y/=1)	= False
					| otherwise						= isPrime x ys
isPrime _ []		= True
isPrime x _			= False
--------------------------

getPrimeList n		= [x | x<-[1..n], isPrime x (getList x)]