import Control.Applicative

main :: IO()
main = do
  a <- (++) <$> getLine <*> getLine
  putStrLn $ "The combined string is :" ++ a

