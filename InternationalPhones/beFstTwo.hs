beFstTwo :: (Eq a) => [a] -> [a] -> Bool
beFstTwo [x,y] (m:n:ns) = x == m && y == n
