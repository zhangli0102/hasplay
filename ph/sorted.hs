pairs :: [a] -> [(a,a)]
pairs l@(x:xs) = zip l xs

sorted :: (Ord a) => [a] -> Bool
sorted xs = and [(x<=y)|(x,y) <- pairs xs]
