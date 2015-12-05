module Main where
import Data.List

dupes :: [String] -> [String] -> Int
dupes [] d = length d
dupes (x:xs) d
    | elem x xs = dupes xs (x:d)
    | elem x d = dupes xs (x:d)
    | otherwise = dupes xs d

mySort :: String -> [String]
mySort c = sort (map sort(lines c))

main :: IO ()
main = do
    content <- readFile("./src/data.txt")
    let strings = mySort content
    let number = dupes strings []
    print number
