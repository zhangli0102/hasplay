import Control.Monad

main = do
  words <- forM ["zhangli", "wangqiaochu"] (\a -> do
    putStrLn $ "What word will you associate with "++ a ++ "?"
    word <- getLine
    return word)

  putStrLn "The words you accosicate with zhangli and wangqiaochu are:"
  mapM_ putStrLn words
