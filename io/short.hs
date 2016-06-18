main = do
    contents <- getContents
    putStr (short contents)

short :: String -> String
short input =
    let raw = lines input
        second = filter (\x -> length x < 10) raw
        output = unlines second
    in  output
