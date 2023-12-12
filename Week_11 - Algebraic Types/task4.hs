{-
Define two functions that accept a list of shapes and:
    1. The first returns their areas.
    2. The second returns the shape with the biggest area.
-}

main :: IO()
main = do
    print $ getAreas [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == [78.54, 11.25, 113.3, 9.13, 6283.19]
    print $ maxArea [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == Cylinder 20.0 30.0

data Shape a = Circle a | Rectangle a a | Triangle a a a | Cylinder a a
 deriving (Show, Eq, Ord, Read)

area :: (Num a, Floating a) => Shape a -> a
area (Circle r) = pi * r * r
area (Rectangle x y) = x * y
area (Triangle x y z) = let halfP = (x + y + z) / 2
    in sqrt $ halfP * (halfP - x) * (halfP - y) * (halfP - z)
area (Cylinder r h) = 2 * pi * r * h + 2 * pi * r * r

maxArea :: (Ord a, Floating a) => [Shape a] -> Shape a
maxArea = foldl1 (\ shape1 shape2 -> if area shape1 > area shape2 then shape1 else shape2)

roundTwoDigit = (/ 100) . fromIntegral . round . (* 100)

getAreas :: [Shape Double] -> [Double]
getAreas = map (roundTwoDigit . area)
