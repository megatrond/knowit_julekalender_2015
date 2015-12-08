module Main where

iSqrt :: Int -> Int
iSqrt = floor . sqrt . fromIntegral

isPrime :: Int -> Bool
isPrime k = null [ x | x <- [2..iSqrt k], k `mod`x  == 0]

iReverse :: Int -> Int
iReverse = read . reverse . show

mirps :: Int -> Int
mirps i = length [ x | x <- [0..i], (isPrime x && isPrime (iReverse x) && x /= (iReverse x) ) ]

main :: IO ()
main = do
    print (mirps 1000)
    
