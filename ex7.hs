-- ordena de maneira ascendente 3 inteiros
max3 :: Integer -> Integer -> Integer -> Integer
max3 x y z = if x>=y 
            then if x>=z
                    then x
                 else z
            else
                if y>=z
                    then y
                else z

min3 :: Integer -> Integer -> Integer -> Integer
min3  x y z = if x < y
                then if y < z
                    then x
                    else if x < z
                            then x
                         else z 
                else if y < z
                        then y
                        else z

meio3 :: Integer -> Integer -> Integer -> Integer
meio3 x y z = if x < y
                then if y < z
                       then y
                     else z
               else if x<=z
                        then x
                    else if y>z
                        then y
                        else z


orderTriple :: (Integer,Integer,Integer) -> (Integer,Integer,Integer)
orderTriple (x,y,z) = (a,b,c)
                        where a = min3 x y z
                              c = max3 x y z
                              b = meio3 x y z

