dobroSum :: [Int] -> Int
dobroSum [] = 0
dobroSum (x:xs) = (2*x) + dobroSum xs
