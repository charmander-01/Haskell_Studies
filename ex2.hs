{- Divide uma lista de qtd par em duas partes -}

metades :: [Int] -> ([Int],[Int])
metades l = (take (div (length l) 2) l,
             drop (div (length l) 2) l)
