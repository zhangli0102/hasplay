data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

cbbt :: Int -> [Tree String]
cbbt 0 = [Empty]
cbbt n = let (q,r) = quotRem (n-1) 2
         in [Branch "zhangli" left right | i <- [q..q+r], left <- cbbt i, right <- cbbt (n-1-i)]
