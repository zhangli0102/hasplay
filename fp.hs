module FirstPrinciples where

rvs :: String -> String
rvs [] = []
rvs (x:xs) = rvs xs ++ [x]

myAbs :: Integer -> Integer
myAbs a = if a > 0 then a
    else -a
