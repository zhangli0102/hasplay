name2reply :: String -> String
name2reply name = 
  "Nice to meet you, " ++ name ++ ".\n" ++
  "Your name contains " ++ show (length name) ++ " characters."

main::IO()
main = do
  putStrLn "Please input your name: "
  name <- getLine
  let outStr = name2reply name
  putStrLn outStr
