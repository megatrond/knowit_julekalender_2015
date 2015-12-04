module Main where

countDNA :: String -> Int -> Int -> Int -> Int -> (Int, Int, Int, Int)
countDNA [] a c g t = (a, c, g, t)
countDNA (x:xs) a c g t
    | x == 'A' = countDNA xs (a+1) c g t
    | x == 'C' = countDNA xs a (c+1) g t
    | x == 'G' = countDNA xs a c (g+1) t
    | x == 'T' = countDNA xs a c g (t+1)

main :: IO ()
main = do
    content <- readFile("./src/data.txt")
    let counts = countDNA content 0 0 0 0
    print counts
