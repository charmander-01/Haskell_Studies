-- quad :: Int-> Int
-- quad x = x * x
-- l = map (\x -> x*x) [1..100]

-- l = [x^2 | x<-[1..100]]

func :: Int->Double
func x = ((-1)^x)/fromIntegral(2*x+1)

aprox :: Int -> Double
aprox y = 4 * sum (map func [0..y-1])

func2 :: Int -> Double
func2 x = (-1)^x/fromIntegral((x+1)^2)

aprox2 :: Int -> Double
aprox2 y = sqrt (12 * sum (map func2 [0..y-1]))

divprop ::  Int->[Int]

divprop n = [x | x<-[1..n-1], n`mod`x==0 ]

perfeitos :: Int->[Int]
perfeitos n = [x| x<-[1..n], sum (divprop x) == x]

