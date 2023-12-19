main :: IO()
main = do
    print $ maxSumSubT t1 == 5
    print $ maxSumSubT t2 == 2

sumTree :: (Num a) => BTree a -> a
sumTree NullT = 0
sumTree (Node value left right) = value + sumTree left + sumTree right

maxSumSubT :: (Num a, Ord a) => BTree a -> a
maxSumSubT NullT = 0
maxSumSubT tree@(Node _ left right) = maximum [sumTree tree, maxSumSubT left, maxSumSubT right]

t1 = Node 3 (Node 0 NullT NullT) (Node 2 (Node 0 NullT NullT) NullT)
t2 = Node (-3) (Node 0 NullT NullT) (Node 2 (Node 0 NullT NullT) NullT)

data BTree a = NullT | Node a (BTree a) (BTree a)


