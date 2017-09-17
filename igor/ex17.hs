palindromo [] = True
palindromo (x:xs) = (x:xs) == reverse (x:xs)