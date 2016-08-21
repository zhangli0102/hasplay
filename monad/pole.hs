type Birds = Int
type Pole = (Birds, Birds)

addLeft :: Birds -> Pole -> Maybe Pole
addLeft n (l, r)  
  | abs (l + n - r) < 4 = Just (l + n, r)
  | otherwise = Nothing

addRight :: Birds -> Pole -> Maybe Pole
addRight n (l, r)  
  | abs (r + n -l) < 4 = Just (l, r + n)
  | otherwise = Nothing
