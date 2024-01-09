main :: IO()
main = do
    print $ maximumLevel t1 == 2
    print $ maximumLevel t2 == 3
    print $ maximumLevel t3 == 3

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show)

t1 = Node 94 (Node 73 Nil (Node 80 Nil Nil)) (Node 87 (Node 73 Nil Nil) Nil)
t2 = Node 94 (Node 73 Nil (Node 80 Nil Nil)) (Node 87 (Node 73 Nil Nil) (Node 7 Nil Nil))
t3 = Node 94 (Node 0 Nil (Node 42 Nil Nil)) (Node 0 (Node 42 Nil Nil) (Node 42 Nil Nil))

maximumLevel :: (Num a, Ord a) => BTree a -> Int
maximumLevel t = snd $ foldr1 (\ child@(valsC, _) parent@(valsP, _) -> if sum valsC > sum valsP then child else parent) $ takeWhile ((not . null) . fst) [ (getLevel t k, k + 1) | k <- [0 .. ]]

getLevel :: BTree a -> Int -> [a]
getLevel Nil _ = []
getLevel (Node value _ _) 0 = [value]
getLevel (Node _ left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)
