module Main where

import Hello
import DogsRule

main :: IO ()
main = do
    putStrLn "What's your name?"
    name <- getLine
    sayHello name
    dogs
