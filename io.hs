main = do
  putStrLn "What's your name?"
  name <- getLine
  putStrLn ("Hey, " ++ name ++ "! How are you?")
