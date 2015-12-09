module Main where

mod26 :: Int -> Int
mod26 x = mod (x-1) 26

quot26 :: Int -> Int
quot26 x = quot (x-1) 26

excel :: Int -> [Int] -> [Int]
excel 0 s = s
excel x s = excel (quot26 x) ((mod26 x):s)

map2chars :: [Int] -> String -> String
map2chars [] s = reverse s
map2chars (x:xs) s = map2chars xs ((['A'..'Z'] !! x):s)

main :: IO ()
main = do
	print (map2chars (excel 142453146368 []) "")
