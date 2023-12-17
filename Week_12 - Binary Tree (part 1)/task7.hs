main :: IO()
main = do
    print $ isGraceful t1 == True -- t1 = A
    print $ isGraceful t2 == True -- t2 = B
    print $ isGraceful t3 == False -- t3 = C

data NTree a = Nil | Node a [NTree a]

t1 :: NTree Int
t1 = Node 1 [Node 3 [Nil], Node 5 [Nil], Node 7 [Nil], Node 9 [Nil]]

t2 :: NTree Int
t2 = Node 7 [Node 3 [Nil], Node 9 [Nil], Node 5 [Nil], Node 1 [Nil]]

t3 :: NTree Int
t3 = Node 1 [Node 3 [Nil], Node 5 [Node 42 [Nil]], Node 7 [Nil], Node 9 [Nil]]


