main :: IO()
main = do
  rev <- fmap reverse getLine
  putStrLn $ "It's " ++ rev ++ " backwards!"
