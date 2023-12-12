-- Define a function that finds the distance
-- between two points.

main :: IO()
main = do
    print $ distance (TwoD 2 5) (TwoD 6 9) == 5.66
    print $ distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) == 16.03
    -- print $ distance (ThreeD 2 5 10) (TwoD 6 9) -- should throw an error

data Point a = TwoD a a | ThreeD a a a
 deriving (Eq)

roundTwoDigit = (/ 100) . fromIntegral . round . (* 100)

distance :: Point Double -> Point Double -> Double
distance (TwoD x1 y1) (TwoD x2 y2) = roundTwoDigit $ sqrt $ (x1 - x2)**2 + (y1 - y2)**2
distance (ThreeD x1 y1 z1) (ThreeD x2 y2 z2) = roundTwoDigit $ sqrt $ (x1 - x2)**2 + (y1 - y2)**2 + (z1 - z2)**2
distance _ _ = error "Different dimensions!"
