import System.IO

main = do
  input <- readFile "input.txt"
  let output = unlines . map process . lines $ input
  writeFile "output.txt" output

process :: String -> String
process = second . words

second :: [String] -> String
second (x:y:l) 
  | read x == 1 = "Left, " ++ y ++ "meters"
  | read x == 2 = "Right, " ++ y ++ "meters" 
  | read x == 3 = "Straight, " ++ y ++ "meters"
