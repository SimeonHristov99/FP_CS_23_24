main :: IO()
main = do
    print $ revOneLine 123 == 321
    print $ revOneLineMagic 123 == 321

    print $ sumDivsOneLineLC 6 == 12
    print $ sumDivsOneLineHOF 6 == 12

    print $ primeOneLineLC 6 == False
    print $ primeOneLineLC 17 == True
    print $ primeOneLineLC 1 == False

    print $ primeOneLineHOF 6 == False
    print $ primeOneLineHOF 17 == True
    print $ primeOneLineHOF 1 == False

primeOneLineHOF :: Int -> Bool
primeOneLineHOF n = n > 1 && (null $ filter (\ d -> mod n d == 0) [2 .. n - 1])
-- primeOneLineHOF n = [1, n] == filter (\ d -> mod n d == 0) [1 .. n]

primeOneLineLC :: Int -> Bool
primeOneLineLC n = [1, n] == [divisor | divisor <- [1 .. n], mod n divisor == 0]

sumDivsOneLineHOF :: Int -> Int
sumDivsOneLineHOF n = sum $ filter (\ divisor -> mod n divisor == 0) [1 .. n]

sumDivsOneLineLC :: Int -> Int
sumDivsOneLineLC n = sum [divisor | divisor <- [1 .. n], mod n divisor == 0]

revOneLineMagic :: Int -> Int
revOneLineMagic = read . reverse . show

revOneLine :: Int -> Int
revOneLine n = read $ reverse $ show n
