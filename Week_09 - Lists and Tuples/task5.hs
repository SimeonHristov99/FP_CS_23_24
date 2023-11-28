import Data.List

main :: IO()
main = do
    print $ isImage [] [] == True
    print $ isImage [1, 2, 3] [2, 3, 4] == True
    print $ isImage [1, 2, 3] [4, 6, 9] == False
    print $ isImage [1, 2, 3] [2, 5, 4] == False

isImage :: (Eq a, Num a) => [a] -> [a] -> Bool
isImage xs ys = ys == map (\ x -> x + head ys - head xs) xs
-- isImage xs = (==1) . length . nub . zipWith (-) xs
-- isImage xs ys = length (nub $ zipWith (-) xs ys) == 1
