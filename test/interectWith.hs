import System.Environment(getArgs)

interectWith function inputFile outputFile = do
  input <- readFile inputFile
  writeFile outputFile (function input)

main = mainWith myFunction
  where mainWith function = do
          args <- getArgs
          case args of
            [input, output] -> interectWith function input output
            _ -> putStrLn "error: The number of arguments should be exact two."
        
        myFunction = id

