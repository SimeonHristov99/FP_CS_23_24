{-
Define a function that accepts a list of points
and returns a vector `(d, p1, p2)`
that represents the closest distance
between any two points and the points themselves.
-}

main :: IO()
main = do
    print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == (2.83,ThreeD 6.0 5.0 4.0,ThreeD 4.0 5.0 6.0)

data Point a = TwoD a a | ThreeD a a a
 deriving (Eq, Show)

getClosestDistance :: [Point Double] -> (Double, Point Double, Point Double)
getClosestDistance ps = foldl1 (\ v1@(d1, _, _) v2@(d2, _, _) -> if d1 < d2 then v1 else v2) [(distance p1 p2, p1, p2) | p1 <- ps, p2 <- ps, p1 /= p2]

roundTwoDigit = (/ 100) . fromIntegral . round . (* 100)

distance :: Point Double -> Point Double -> Double
distance (TwoD x1 y1) (TwoD x2 y2) = roundTwoDigit $ sqrt $ (x1 - x2)**2 + (y1 - y2)**2
distance (ThreeD x1 y1 z1) (ThreeD x2 y2 z2) = roundTwoDigit $ sqrt $ (x1 - x2)**2 + (y1 - y2)**2 + (z1 - z2)**2
distance _ _ = error "Different dimensions!"
