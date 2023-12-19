main :: IO()
main = do
    print $ constructMaxBTree [3, 2, 1, 6, 0, 5] == t

data BTree = Nil | Node Int BTree BTree
 deriving (Show, Eq)

constructMaxBTree :: [Int] -> BTree
constructMaxBTree [] = Nil
constructMaxBTree xs = Node maxEl (constructMaxBTree $ takeWhile (/= maxEl) xs)
                                    (constructMaxBTree $ tail $ dropWhile (/= maxEl) xs)
 where
    maxEl = maximum xs

t = Node 6 (Node 3 Nil (Node 2 Nil (Node 1 Nil Nil))) (Node 5 (Node 0 Nil Nil) Nil)
