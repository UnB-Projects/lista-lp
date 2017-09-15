
{-
append [] ys = ys
append (x:xs) ys = x:append xs ys
-}


xs \/ ys
(x:xs) \/ (z:ys) | x == z = xs \/ ys
                 | otherwise = False
  [] \/ [] = True
