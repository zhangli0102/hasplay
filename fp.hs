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


