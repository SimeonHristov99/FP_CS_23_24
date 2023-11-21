main :: IO()
main = do
    print $ "Hello, world"
    print ("Hello, world")
    print (5 + 6)
    print $ 5 + 6
    print $ f [42, 10]

f :: [Int] -> Int
f (x:xs) = x

-- f 42 = "Bye"