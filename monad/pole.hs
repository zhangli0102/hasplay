type Birds = Int
type Pole = (Birds, Birds)

addLeft :: Birds -> Pole -> Pole
addLeft n (l, r) = (l + n, r)

addRight :: Birds -> Pole -> Pole
addRight n (l, r) = (l, r + n)

