isBigNumber :: Int -> (Bool, String)
isBigNumber n
  | n > 9 = (True, "to see if the number is bigger than 9.")
  | otherwise = (False, "to see if the number is bigger than 9.")
