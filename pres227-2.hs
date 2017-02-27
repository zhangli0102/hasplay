prenum = prenumber (map show [1..])
prenumber = zipWith (\x y -> "(" ++ x ++ "). " ++ y)

