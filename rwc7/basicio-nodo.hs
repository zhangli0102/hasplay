main =
  putStrLn "Please input your name: " >>
  getLine >>=
  (\inStr -> putStrLn $ "Hello, " ++ inStr ++ "!")
