isprime :: Int -> Bool
isprime n 
  | n <= 1 = False
  | otherwise = foldr (\x b -> (n `mod` x /= 0) && b) True [2..(n-1)]
