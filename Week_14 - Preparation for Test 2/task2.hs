main :: IO()
main = do
    print $ isPerfectlyBalanced t1 == True

data BTree a = Nil | Node a (BTree a) (BTree a)

t1 = Node 'A' (Node 'B' (Node 'D' Nil Nil) (Node 'D' Nil Nil)) (Node 'C' (Node 'D' Nil Nil) (Node 'E' Nil Nil))

size :: BTree a -> Int
size Nil = 0
size (Node _ left right) = 1 + size left + size right

height :: BTree a -> Int
height Nil = 0
height (Node _ left right) = 1 + max (height left) (height right)

isPerfectlyBalanced :: BTree a -> Bool
isPerfectlyBalanced t = size t == 2^(height t) - 1
