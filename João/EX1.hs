verifica_igualdade xs = case (xs) of
	(y1:y2:ys)|y1 == y2 -> verifica_igualdade zs
			  |otherwise -> False
			  where
					zs = y2:ys
	(y:[])              ->True		  
	

