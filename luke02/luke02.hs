maxi :: Float -> Float -> Float
maxi x y = if x > y then x else y 

mini :: Float -> Float -> Float
mini x y = if x < y then x else y

floats :: [String] -> [Float]
floats = map read

findIt :: [Float] -> Float -> Float -> Float -> Float
findIt [] low high best = best
findIt (x:xs) low high best = 
    findIt xs (mini x low) (maxi x high) (maxi best ((maxi x high)-(mini x low)))

main = do
    content <- readFile("./data/data.txt")
    let numbers = floats (lines content)
    let result = findIt numbers 10000 0 0
    print result