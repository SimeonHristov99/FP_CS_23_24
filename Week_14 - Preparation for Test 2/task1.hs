main :: IO()
main = do
    print $ maximumLevel t1 == 2
    print $ maximumLevel t2 == 3
    print $ maximumLevel t3 == 3

t1 = Node 94 (Node 73 Nil (Node 80 Nil Nil)) (Node 87 (Node 73 Nil Nil) Nil)
t2 = Node 94 (Node 73 Nil (Node 80 Nil Nil)) (Node 87 (Node 73 Nil Nil) (Node 7 Nil Nil))
t3 = Node 94 (Node 0 Nil (Node 42 Nil Nil)) (Node 0 (Node 42 Nil Nil) (Node 42 Nil Nil))


