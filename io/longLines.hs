main :: IO()
main = do
  input <- getContents 
  putStrLn . longLinesOnly $ input

longLinesOnly :: String -> String
longLinesOnly input = unlines after
  where after = filter (\line -> length line >10) (lines input)

