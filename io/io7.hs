import Data.Char
import System.IO

main = do
    contents <- readFile "../stern.txt"
    writeFile "sterncaps.txt" (map toUpper contents)
