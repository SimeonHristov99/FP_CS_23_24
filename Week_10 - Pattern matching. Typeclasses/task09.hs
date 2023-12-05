{-
Define a function that returns a list of tuples (x, y)
where y is the square of x.
> Note: x goes from a to b with a step k.
-}

main :: IO()
main = do
    print $ getSquares 0 100 10 == [(0, 0), (10, 100), (20, 400), (30, 900), (40, 1600), (50, 2500), (60, 3600), (70, 4900), (80, 6400), (90, 8100), (100, 10000)]

getSquares :: Int -> Int -> Int -> [(Int, Int)]
getSquares start finish k = [(x, x*x) | x <- [start, start + k .. finish]]
