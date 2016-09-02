mySort :: (Ord a) => [a] -> [a]
mySort [] = []
mySort (x:xs) = mySort small ++ [x] ++ mySort big
  where small = [y|y <- xs, y <= x ]
        big = [y|y <- xs, y > x ]
