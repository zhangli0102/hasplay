import System.IO
import Data.Char(toUpper)

main :: IO ()
main = do
  inh <- openFile "input2.txt" ReadMode
  outh <- openFile "output2.txt" WriteMode
  input <- hGetContents inh
  let inStr = processStr input
  hPutStr outh inStr
  hClose inh
  hClose outh

processStr :: String -> String
processStr ru = map toUpper ru

