import Data.Char

main = do
    putStrLn "What's your name?"
    name <- getLine
    putStrLn $ "Hey, " ++ map toUpper name ++ "! How are you?"


