data Tree = Empty | Node Int Tree Tree

insert :: Int -> Tree -> Tree
insert x Empty = Node x Empty Empty
insert x (Node v left right)
  | x < v = Node v (insert x left) right
  | otherwise = Node v left (insert x right)

search :: Int -> Tree -> Bool
search x Empty = False
search x (Node v left right)
  | x == v = True
  | x < v = search x left
  | otherwise = search x right

main :: IO ()
main = do
  let tree = foldr insert Empty [1..100]
  print (search 99 tree)
