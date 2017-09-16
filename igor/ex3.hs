resto :: Int -> Int -> Int
resto x y | (x < y)  = x
          | (x == y) = 0
          | (x > y)  = x - y*(x`div`y)