commas :: String -> [String]
commas [] = []
commas l@(x:xs)
  | x /= ',' = ys : commas rest
  | otherwise = commas xs
  where (ys, rest) = break (== ',') l
