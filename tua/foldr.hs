youzhe :: (a -> b -> b) -> b -> [a] -> b
youzhe f y [] = y
youzhe f y (x:xs) = f x (youzhe f y xs)
