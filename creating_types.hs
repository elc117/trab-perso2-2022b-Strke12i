data Arvore a = Empty | No a (Arvore a) (Arvore a) deriving(Show, Eq)

insert:: Ord a => Arvore a -> a -> Arvore a
insert Empty val = No val Empty Empty
insert (No v left right) val = if val < v then No v (insert left val) right 
    else No v left (insert right val)


-- foldl insert empty [arr]