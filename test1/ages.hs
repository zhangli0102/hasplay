import System.IO

num2sen :: String -> String
num2sen age = "Hey, you are only " ++ age ++ " years old!"

main::IO()
main = do
  input <- readFile "input.txt" 
  let output = unlines . map num2sen . words $ input
  writeFile "output.txt" output
