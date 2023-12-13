main :: IO()
main = do
    print $ t
    print $ size t == 13
    print $ getLevel t 3 == [1, 2]


