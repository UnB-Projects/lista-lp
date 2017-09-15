intersecao :: [Int] -> [Int] -> [Int]
intersecao [] [] = []
intersecao [] _ = []
intersecao _ [] = []
intersecao (x:xs) (y:ys) | (x==y)
