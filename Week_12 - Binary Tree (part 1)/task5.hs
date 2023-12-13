main :: IO()
main = do
    print $ mapTree t 2 == [18,6,27]
    print $ mapTree t 1 == [8,1,9]


