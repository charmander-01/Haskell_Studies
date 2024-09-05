-- Retorna o maior entre 2 inteiros e quantas vezes o maior aparece
maxOccurs :: Integer -> Integer -> (Integer,Integer)
maxOccurs x y = if x>y
                    then (x,1)
                else if y > x
                        then (y,1)
                else (x,2)
