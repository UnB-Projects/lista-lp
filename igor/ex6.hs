bissexto n | (n `mod` 4 == 0) && (n `mod` 100 /= 0) = True
           |  n `mod` 400 == 0                      = True
           | otherwise                              = False