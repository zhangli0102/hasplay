main = do
    line <- fmap reverse getLine
    putStrLn $ "The reverse of you input is: " ++ line
