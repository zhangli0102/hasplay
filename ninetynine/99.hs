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

add :: (Ord a) => a -> Tree a -> Tree a
add x Empty = Branch x Empty Empty
add x t@(Branch y l r) = case compare x y of
                    LT -> Branch y (add x l) r
                    GT -> Branch y l (add x r)
                    EQ -> t

construct :: (Ord a) => [a] -> Tree a
construct xs = foldl (flip add) Empty xs
