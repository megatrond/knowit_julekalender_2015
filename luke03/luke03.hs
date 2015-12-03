daysInYear :: Int -> Int
daysInYear y
    | mod y 400 == 0 = 366
    | mod y 100 == 0 = 365
    | mod y 4 == 0 = 366
    | otherwise = 365

isOnFriday :: Int -> Int
isOnFriday s
    | mod (s+256) 7 == 0 = 1
    | otherwise = 0

countFridays :: Int -> Int -> Int -> Int
countFridays 2016 s f = f
countFridays y s f = countFridays (y+1) (s+daysInYear y) (f+isOnFriday s)

main = do
    let fridays = countFridays 1 0 0
    print fridays
