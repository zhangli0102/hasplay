merge :: Ord a => [a] -> [a] -> [a]
merge [] a = a
merge a [] = a
merge l1@(x:xs) l2@(y:ys)
  | x < y = x : merge xs l2
  | x == y = x : merge xs ys
  | x > y = y : merge l1 ys

