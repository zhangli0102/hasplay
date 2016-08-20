import Data.Monoid

lengthCompare :: String -> String -> Ordering
lengthCompare a b = (length a `compare` length b) `mappend` (a `compare` b)
