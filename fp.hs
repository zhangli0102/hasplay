module FirstPrinciples where

rvs :: String -> String
rvs [] = []
rvs (x:xs) = rvs xs ++ [x]

myAbs :: Integer -> Integer
myAbs a = if a > 0 then a
    else -a

pal :: String -> String
pal xs =
    case xs == rvs xs of
        True -> "Yeah!"
        False -> "Na Na"

beautyIdentifier :: String -> IO()
beautyIdentifier name =
    case x of
        True -> putStrLn "Very beautiful! No.1"
        False -> putStrLn "Also very beautiful, but only No.2"
    where x = name == "zhangli"

fibonacci :: Integral a => a -> a
fibonacci 1 = 1
fibonacci 2 = 2
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) = f x || myAny f xs

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem y (x:xs) = y == x || myElem y xs

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs
