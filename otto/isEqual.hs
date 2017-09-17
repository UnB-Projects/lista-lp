--Ex8 Lista
-- 2 listas possuem mesmos elementos
-- procura o primeiro elemento da lista 1 na lista 2
-- se encontra, da pop nos elementos nas duas listas e passa para o proximo elemento da lista 1
-- caso contrario, False
-- percorre todos os elementos da lista 1 e verifica se a lista 2 tem tamanho igual
-- se tamanhos soa diferentes, False

isElementEqual x (y:ys)	| x/=y = y:isElementEqual x (ys)
						| otherwise = ys
isElementEqual _ [] = []

isEqual (x:xs) (y:ys)	| length (isElementEqual x (y:ys)) /= length xs = False
						| otherwise = isEqual xs (isElementEqual x (y:ys))
isEqual [] _ = True