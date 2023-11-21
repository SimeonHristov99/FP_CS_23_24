main :: IO()
main = do
    print $ factRec 11 == 39916800
    print $ factRecPM 11 == 39916800
    -- print $ factRec (-11) -- error: x was negative
    print $ factIter 11 == 39916800
    -- --print $ factIter (-11) -- error: x was negative
    print $ factXs 11 == 39916800

factXs :: Int -> Int
factXs n = product [1 .. n]

factIter :: Int -> Int
factIter n
 | n < 0 = error "n was negative"
 | otherwise = helper 1 n
  where
    helper :: Int -> Int -> Int
    helper result 0 = result
    helper result leftover = helper (result * leftover) (leftover - 1)

factRec :: Int -> Int
factRec n
 | n < 0 = error "n was negative"
 | n == 0 = 1
 | otherwise = n * factRec (n - 1)

factRecPM :: Int -> Int
factRecPM 0 = 1
factRecPM n = n * factRecPM (n - 1)
