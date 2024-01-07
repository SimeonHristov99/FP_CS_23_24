main :: IO()
main = do
    print $ isPerfectlyBalanced t1 == True

t1 = Node 'A' (Node 'B' (Node 'D' Nil Nil) (Node 'D' Nil Nil)) (Node 'C' (Node 'D' Nil Nil) (Node 'E' Nil Nil))


