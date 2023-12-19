main :: IO()
main = do
    print $ listLeaves [(1, 2, 3), (2, 4, 5)] == [3, 4, 5]
    print $ listLeaves [(2, 4, 5), (1, 2, 3)] == [4, 5, 3]
    print $ listLeaves [(1, 2, 3), (3, 4, 5), (5, 6, 9)] == [2, 4, 6, 9]

type Root = Int
type Value = Int
type Tree = [(Root, Value, Value)]

listLeaves :: Tree -> [Value]
listLeaves xs = filter (\ x -> notElem x roots) $ concatMap (\ (x, y, z) -> [x, y, z]) xs
 where
    roots = map (\ (x, _, _) -> x) xs
