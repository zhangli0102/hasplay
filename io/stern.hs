import System.IO

main = do
    contents <- readFile "../stern.txt"
    putStr contents
