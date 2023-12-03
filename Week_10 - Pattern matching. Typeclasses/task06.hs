{-
Define the Rat data type that is the tuple (x, y) where x is the nominator
and y the denominator of a rational number.
Define a function called that simplifies
the nominator and denominator (so that their highest common denominator is 1).
> Implementation detail: Use the let syntax.
-}

main :: IO()
main = do
    print $ normalize (4, 2) == (2, 1)
    print $ normalize (8, 4) == (2, 1)
    print $ normalize (2, 4) == (1, 2)


