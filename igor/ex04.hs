dois_elevado_a :: Int -> Int
dois_elevado_a 0 = 1
dois_elevado_a x = 2 * dois_elevado_a (x-1)