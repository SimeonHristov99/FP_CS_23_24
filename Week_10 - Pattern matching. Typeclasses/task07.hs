{-
Define a function that calculates the volumes of a list of cylinders.
The cylinder is a tuple in the form (r, h)
where r is the radius and h is the height.
-}

main :: IO()
main = do
    print $ getVolumes [(5, 10), (5, 2), (2, 10), (2, 5)] == [785.3981633974483,157.07963267948966,125.66370614359172,62.83185307179586]

type Cylinder a = (a, a)

getVolumes :: (Num a, Floating a) => [Cylinder a] -> [a]
getVolumes = map (\ (r, h) -> pi * r * r * h)
