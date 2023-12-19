main :: IO()
main = do
    print $ mapTree t 2 == [18,6,27]
    print $ mapTree t 1 == [8,1,9]

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show, Eq)

t = Node (+1) (Node (^2) (Node (*2) Nil Nil) (Node (\ x -> x - 3) Nil Nil)) (Node (3^) Nil Nil)

mapTree :: BTree (a -> a) -> a -> [a]
mapTree Nil _ = []
mapTree (Node f Nil Nil) x = [f x]
mapTree (Node f left right) x = mapTree left (f x) ++ mapTree right (f x)
