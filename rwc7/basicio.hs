main = do
  putStrLn "What's your name?"
  name <- getLine
  putStrLn $ "Nice to meet you, " ++ name ++ "!"
