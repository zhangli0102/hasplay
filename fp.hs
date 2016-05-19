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
