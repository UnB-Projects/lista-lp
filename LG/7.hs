divisores :: Int -> [Int] -> [Int]
divisores _ [] = []
divisores n (x:xs)
			| (n `mod` x == 0) = x:(divisores n xs)
			| otherwise = divisores n xs