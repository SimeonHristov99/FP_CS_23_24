-- Read the contents of the `sample.txt` text file with Haskell.

main :: IO()
main = do
    contents <- readFile "sample.txt"
    -- print $ words contents
    print $ map words $ lines contents
