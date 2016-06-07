module GG where
    
take1 :: (Num i, Ord i) => i -> [a] -> [a]
take1 _ [] = []
take1 n all@(x:xs)
  | n <=0 = []
  | otherwise = x : take1 (n-1) xs

repeat1 :: a -> [a] 
repeat1 x = x : repeat1 x 

zip1 :: [a] -> [b] -> [(a,b)]
zip1 _ [] = []
zip1 [] _ = []
zip1 (x:xs) (y:ys) = (x,y) : zip1 xs ys

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let largesorted = quicksort [n|n<-xs,n>x]
        smallsorted = quicksort [n|n<-xs,n<x]
    in  smallsorted ++ [x] ++ largesorted
