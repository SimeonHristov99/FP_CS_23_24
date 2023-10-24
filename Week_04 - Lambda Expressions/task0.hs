main :: IO()
main = do
    print $ f 42 (g 10)

g x = g x

f x y = x
