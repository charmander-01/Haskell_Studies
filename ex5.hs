-- Funcao que recebe 3 inteiros e retorna o menor
min3 :: Int -> Int -> Int -> Int
min3  x y z = if x < y
                then if y < z
                    then x
                    else if x < z
                            then x
                         else z 
                else if y < z
                        then y
                        else z
