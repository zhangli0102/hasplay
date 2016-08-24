isBigNumber :: Int -> (Bool, String)
isBigNumber n
  | n > 9 = (True, "to see if the number is bigger than 9.")
  | otherwise = (False, "to see if the number is bigger than 9.")

applyLog :: (x, String) -> (x -> (y, String)) -> (y, String)
applyLog (a, log) f = let (x, newlog) = f a in (x, log ++ newlog)

