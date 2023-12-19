import Data.List

main :: IO()
main = do
    print $ allContain [t1, t2] == ["acd","cd","d"]
    print $ allContain [t1, t2, t3] == []
    print $ allContain [t3, t4] == ["g"]

allContain :: [BTree] -> [String]
allContain = foldl1 intersect . map genWords

traverseDFS :: BTree -> [String]
traverseDFS Nil = []
traverseDFS (Node value Nil Nil) = [[value]]
traverseDFS (Node value left right) = map (value:) (traverseDFS left) ++ map (value:) (traverseDFS right)
    ++ traverseDFS left ++ traverseDFS right

genWords :: BTree -> [String]
genWords tree = filter (containsWord tree) $ traverseDFS tree

containsWord :: BTree -> String -> Bool
containsWord Nil [] = True
containsWord (Node value Nil Nil) [x] = x == value
containsWord tree@(Node value left right) word@(x:xs)
 | x == value = helper tree word
 | otherwise = containsWord left word || containsWord right word
 where
    helper (Node value Nil Nil) [x] = x == value
    helper (Node value left right) (x:xs) = x == value
                                    && (helper left xs || helper right xs)
    helper  _ _ = False
containsWord  _ _ = False

data BTree = Nil | Node Char BTree BTree

t1 :: BTree
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil)) 

t4 :: BTree
t4 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'g' Nil Nil)
