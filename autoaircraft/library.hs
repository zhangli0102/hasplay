findLeg :: (Float -> Bool) -> [Float] -> Int
findLeg f (x:xs)
  | f x = 1
  | otherwise = 1 + findLeg f xs
