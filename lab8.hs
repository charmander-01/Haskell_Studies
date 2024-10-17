-- Lab 8 
-- Luís Miguel Gouveia Machado

-- Questao 1

shift :: [a] -> [a]
shift xs = drop 1 xs ++ [head xs]

rotate :: [a] -> [[a]]
rotate xs = iterate shift xs

-- Questao 2

quatros :: [Double]
quatros = cycle[4,-4]

den :: [Double]
den = [1,3..] 

calcPi1 :: Int -> Double
calcPi1 x = sum $ zipWith (/) (take x quatros) den
