module Main where

catalan :: Int -> Int
catalan 0 = 1
catalan n = sum [ catalan i * catalan ((n - 1) - i) | i <- [0..n-1] ]

main :: IO ()
main = do
    putStrLn "How many bracket pairs?"
    c <- getLine
    putStrLn "Number of bracket combos: "
    print (catalan (read c::Int))
