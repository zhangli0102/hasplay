import System.IO
import Library

main = do
  input <- readFile "testin.txt"
  let output = unlines . map myLog. map (findLeg (<1)) . map readFloatList . map words . lines $ input
  writeFile "output.txt" output
