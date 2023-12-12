-- Define a function that accepts a point `p` and a list of points.
-- The function returns the points from the list that are closest to `p`.

main :: IO()
main = do
    print $ closestTo (ThreeD 2 5 10) [(ThreeD 4 5 6), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == [ThreeD 4.0 5.0 6.0]

data Point a = TwoD a a | ThreeD a a a
 deriving (Eq, Show)

roundTwoDigit = (/ 100) . fromIntegral . round . (* 100)

distance :: Point Double -> Point Double -> Double
distance (TwoD x1 y1) (TwoD x2 y2) = roundTwoDigit $ sqrt $ (x1 - x2)**2 + (y1 - y2)**2
distance (ThreeD x1 y1 z1) (ThreeD x2 y2 z2) = roundTwoDigit $ sqrt $ (x1 - x2)**2 + (y1 - y2)**2 + (z1 - z2)**2
distance _ _ = error "Different dimensions!"

closestTo :: Point Double -> [Point Double] -> [Point Double]
closestTo p ps = filter ((== minDist) . (distance p)) ps
 where
    minDist = minimum $ map (distance p) ps
