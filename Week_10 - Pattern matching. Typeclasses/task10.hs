{-
Define TWO functions that return a list of booleans that state
whether the first element of the tuple is the square root of the second
> Note: Do not calculate the square root.
    - Solve using list comprehension;
    - Solve using higher order functions.
-}

main :: IO()
main = do
    print $ checkRootLC [(5, 25), (6, 36), (7, 47), (8, 88)] == [True, True, False, False]
    print $ checkRootHOF [(5, 25), (6, 36), (7, 47), (8, 88)] == [True, True, False, False]

checkRootHOF :: [(Int, Int)] -> [Bool]
checkRootHOF = map (\ (x, y) -> x * x == y)

checkRootLC :: [(Int, Int)] -> [Bool]
checkRootLC xs = [ x * x == y | (x, y) <- xs]
