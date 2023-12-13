main :: IO()
main = do
    print $ maxSumSubT t1 == 5
    print $ maxSumSubT t2 == 2

t1 = Node 3 (Node 0 NullT NullT) (Node 2 (Node 0 NullT NullT) NullT)
t2 = Node (-3) (Node 0 NullT NullT) (Node 2 (Node 0 NullT NullT) NullT)

data BTree a = NullT | Node a (BTree a) (BTree a)


