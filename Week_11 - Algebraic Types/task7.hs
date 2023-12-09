-- Define a function that accepts a point `p` and a list of points.
-- The function returns the points from the list that are closest to `p`.

main :: IO()
main = do
    print $ closestTo (ThreeD 2 5 10) [(ThreeD 4 5 6), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == [ThreeD 4.0 5.0 6.0]

