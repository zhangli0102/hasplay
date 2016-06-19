import System.IO
import System.Directory
import Data.List

main = do
    handle <- openFile "newlines.txt" ReadMode
    (tempName, tempHandle) <- openTempFile "." "temp"
    contents <- hGetContents handle
    let todoTasks = lines contents
        numberedTasks = zipWith (\n line -> show n ++ "-" ++ line) [1..] todoTasks
    putStrLn "These are your items:"
    putStr $ unlines numberedTasks
    putStrLn "Which on do you wanna delete?"
    numberString <- getLine
    let number = read numberString
        newTodoItems = delete (todoTasks !! (number-1)) todoTasks
    hPutStr tempHandle $ unlines newTodoItems
    hClose handle
    hClose tempHandle
    removeFile "newlines.txt"
    renameFile tempName "newlines.txt"
