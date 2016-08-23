roots :: Float -> Float -> Float -> Maybe [Float]
roots a b c
  | delta < 0 = Nothing
  | otherwise = Just [(-b + sqrt(delta))/(2*a), (-b - sqrt(delta))/(2*a)]
    where delta = b*b - 4*a*c

