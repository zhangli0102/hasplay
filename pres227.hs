prenum :: [String] -> [String]
prenum [] = []
prenum strs = prenumber (map show [1..10]) strs

prenumber :: [String] -> [String] -> [String]
prenumber [] _ = []
prenumber _ [] = []
prenumber (x:xs) (y:ys) = ("(" ++ x ++ "). " ++ y) : prenumber xs ys 
