data Arv a  = Vazia 
            | No a (Arv a) (Arv a)

profund Vazia = 0
profund (No _ esq dir) = 1 + max (profund esq) (profund dir)

tamanho :: Arv a -> Int
tamanho Vazia = 0
tamanho (No _ esq dir) = 1 + tamanho esq + tamanho dir

eq struct :: Arv a -> Arv b -> Bool

