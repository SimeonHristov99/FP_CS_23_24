{-
Write a function that takes a tuple in the form (a, b)
and returns the tuple (x, y)
where x is the quotient of the division
between a and b
and y is the remainder.
    - solve without pattern matching;
    - solve with pattern matching;
    - solve using a lambda.
-}

main :: IO()
main = do
    print $ divideNoPM (10, 5) == (2, 0) -- 10 / 5 = 2 and 10 % 5 = 0
    print $ divideNoPM (69, 42) == (1, 27)

    print $ dividePM (10, 5) == (2, 0)
    print $ dividePM (69, 42) == (1, 27)

    print $ (\ (x, y) -> (div x y, mod x y)) (10, 5) == (2, 0)
    print $ (\ (x, y) -> (div x y, mod x y)) (69, 42) == (1, 27)

dividePM :: (Int, Int) -> (Int, Int)
dividePM (x, y) = (div x y, mod x y)

divideNoPM :: (Int, Int) -> (Int, Int)
divideNoPM pair = (div (fst pair) (snd pair), mod (fst pair) (snd pair))

