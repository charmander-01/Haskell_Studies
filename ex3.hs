{- Pegar o ultimo elemento de uma lista-}
last_mine :: [Int] -> Int
last_mine l = head (reverse l)