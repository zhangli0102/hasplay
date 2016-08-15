main = do
  putStrLn "Please enter a Double:"
  inStr <- getLine
  let inDouble = (read inStr) :: Double
  putStrLn $ "Twice " ++ inStr ++ " is " ++ show (inDouble *2)

