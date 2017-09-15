{-
complista :: [Int] -> Bool
complista [] = False
complista (x:xs) | ([x]==p) = complista (p:xs)
                 | otherwise = False
                 where
                    p = (x:xs)
-}

complista :: [Int]-> Bool
complista [_] = True
complista (x:xs) | (x==y) = complista (xs)
                 | otherwise = False
                   where
                     y = head xs
complista [] = True
