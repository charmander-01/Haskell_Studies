-- Diferenca simetrica
difs :: Int -> Int -> Int
difs x y | x >=y = x - y
         | otherwise = y - x   
