-- Questao 1

anyZero :: (Integer -> Integer) -> Integer -> Bool
compara :: Integer -> Bool
 
lista n = [x | x<-[0..n]]
compara x = x==0

anyZero f x =  or (map compara (map f (lista x)) )  

-- Questao 2

nub2 :: Eq a => [a] -> [a]

nub2 [] = []
nub2 (x:xs) = [x] ++ nub2 [y | y<-xs, y/=x] 

-- Questao 3
-- (a)

insert2 :: Ord a => a -> [a] -> [a]

insert2 n [] = [n]
insert2 n (x:xs) | x < n = [x] ++ insert2 n xs
                 | otherwise = [n] ++ (x:xs)

-- (b)

isort :: Ord a => [a] -> [a]
isort [] = []
isort (x:xs) = 

-- Questao 4

minimum2 :: Ord a => [a] -> a

minimum2 (x:xs) = [y | y<-xs] 
