import System.IO

main = do
    newItem <- getLine
    appendFile "newline.txt" (newItem ++ "\n")
