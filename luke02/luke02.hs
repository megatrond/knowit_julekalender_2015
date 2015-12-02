floats :: [String] -> [Float]
floats = map read

findIt :: [Float] -> Float -> Float -> Float -> Float
findIt [] low high best = best
findIt (x:xs) low high best = 
    findIt xs (min x low) (max x high) (max best ((max x high)-(min x low)))

main = do
    content <- readFile("./data/data.txt")
    let numbers = floats (lines content)
    let result = findIt numbers 10000 0 0
    print result