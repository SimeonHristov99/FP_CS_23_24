main :: IO()
main = do
    print $ getPalindromesLC 132465 == 8
    print $ getPalindromesLC 654546 == 8
    print $ getPalindromesLC 100001 == 100012
    print $ getPalindromesLC 21612 == 21614
    print $ getPalindromesLC 26362 == 26364
    
    print $ getPalindromesLCLet 26362 == 26364

    print $ getPalindromesHOF 132465 == 8
    print $ getPalindromesHOF 654546 == 8
    print $ getPalindromesHOF 100001 == 100012
    print $ getPalindromesHOF 21612 == 21614
    print $ getPalindromesHOF 26362 == 26364

rev :: Int -> Int
rev = read . reverse . show

isPalindrome :: Int -> Bool
isPalindrome n = n == rev n

getPalindromesHOF :: Int -> Int
getPalindromesHOF n = head validNums + last validNums
 where
    validNums = filter (\ x -> mod n x == 0 && isPalindrome x) [2 .. n]

getPalindromesLCLet :: Int -> Int
getPalindromesLCLet n =
    let validNums = [x | x <- [2 .. n], mod n x == 0 && isPalindrome x]
    in head validNums + last validNums

getPalindromesLC :: Int -> Int
getPalindromesLC n = head validNums + last validNums
 where
    validNums = [x | x <- [2 .. n], mod n x == 0 && isPalindrome x]