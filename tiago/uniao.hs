membro z [] = False
membro z (w:ws) = z==w || membro z ws

xs *-* ys
		| xs == [] = ys
		| membro x ys = resto
		| otherwise = x:resto
		where
			(x:t)=xs
			resto = t *-* ys
