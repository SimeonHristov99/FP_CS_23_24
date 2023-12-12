{-
Define a new polymorphic algebraic data type called `Shape`.

For it define the constructors:
- `Circle` with one argument representing the radius;
- `Rectangle` with two arguments representing the width and height;
- `Triangle`;
- `Cylinder` with two arguments for the radius of the base and height.

Use the typeclasses `Show`, `Eq`, `Ord`, `Read`.
Create a shape from every type and output it.
-}

main :: IO()
main = do
    -- print $ Circle 5 == Circle 10
    -- print $ Circle 5 < Circle 15
    -- print $ Rectangle 5 5.2
    -- print $ f "123"
    print $ f "Circle 5" -- == Circle 10
    print $ g $ Circle 10

data Shape a = Circle a | Rectangle a a | Triangle a a a | Cylinder a a
 deriving (Show, Eq, Ord, Read)

g :: Shape a -> String
g (Circle x) = "Circle"
g (Rectangle x y) = "Rectangle"
g (Triangle x y z) = "Triangle"
g (Cylinder x y) = "Cylinder"

f :: String -> Shape Int
f ss = read ss
