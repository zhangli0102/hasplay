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
        
        myFunction = fourth

fourth :: String -> String
fourth = unlines.inner.lines

inner :: [String] -> [String]
inner [l@(x:xs), m@(y:ys)]
  | null l = [[]]
  | null m = [[]]
  | otherwise = ([x]++[y]) : inner [xs, ys]
inner _ = []
