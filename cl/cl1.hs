import Data.List
import System.Environment

main = do
    args <- getArgs
    progName <- getProgName
    putStrLn "The arguments are:"
    mapM putStrLn args
    putStrLn "The program's name is:"
    putStrLn progName
