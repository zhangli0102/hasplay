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

data Point = Point Float Float deriving Show
data Shape = Circle Point Float | Rectangle Point Point deriving Show
surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

data Animal = Person { name :: String
                     , age :: Int
                     , height :: Float
                     , weight :: Float
                     } deriving (Show, Read, Eq) 

class YesNo a where
    yesno :: a -> Bool

instance YesNo Int where
    yesno 0 = False
    yesno _ = True

instance YesNo [a] where
    yesno [] = False
    yesno _ = True
