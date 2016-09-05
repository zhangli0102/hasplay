data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

cbbt :: Int -> [Tree String]
cbbt 0 = [Empty]
cbbt n = let (q,r) = quotRem (n-1) 2
         in [Branch "zhangli" left right | i <- [q..q+r], left <- cbbt i, right <- cbbt (n-1-i)]

mirror :: (Tree a) -> (Tree a) -> Bool
mirror Empty Empty = True
mirror (Branch _ x y) (Branch _ a b) = mirror x b && mirror y a
mirror _ _ = False

symmetric :: (Tree a) -> Bool
symmetric Empty = True
symmetric (Branch _ a b) = mirror a b
