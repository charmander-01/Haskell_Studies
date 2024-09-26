import Data.Char
-- Luís Miguel Gouveia Machado (202103755)
-- Lista de exercicios

-- Questao 1

lista :: Int -> [(Int, Int)]
binom :: (Int, Int) -> Int
pascal :: Int -> [[Int]]

lista l = [(x,y) | x<-[l], y<-[0..1]]
binom (n, p) = div (product [1..n]) (product[1..p]*product[1..n-p])
pascal x = [map binom (lista x)]

-- Questao 2
forte :: String -> Bool
forte s = if (length s)>=8 && or(map isLower s) && or(map isUpper s) && or(map isDigit s) then True
          else False

-- Questao 3

let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr (ord 'a' + n)

shift :: Int -> Char -> Char
shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | isUpper c = int2let ((let2int c + n + 32) `mod` 26)-32
          | otherwise = c
