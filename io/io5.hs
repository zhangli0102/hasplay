import Control.Monad

main = do
    girls <- forM ["elementary school", "middle school", "highschool"] (\x -> do
        putStrLn $ "Which girl did you like when you were in " ++ x ++ "?"
        girl <- getLine
        return girl)
    putStrLn $ "The girls you liked are: "
    mapM_ putStrLn girls
