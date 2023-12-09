-- Define a function that finds the distance between two points.

main :: IO()
main = do
    print $ distance (TwoD 2 5) (TwoD 6 9) == 5.66
    print $ distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) == 16.03
    print $ distance (ThreeD 2 5 10) (TwoD 6 9) == 16.03


