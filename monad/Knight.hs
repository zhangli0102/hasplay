module Knight where

type KnightPos = (Int, Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (x, y) = filter onBoard [(x + 1, y + 2), (x + 1, y - 2), (x - 1, y + 2), (x - 1, y - 2), (x + 2, y + 1), (x + 2, y - 1), (x - 2, y + 1), (x - 2, y - 1)]
  where onBoard (x, y) = x `elem` [1..8] && y `elem` [1..8]

in3 :: KnightPos -> [KnightPos]
in3 start = return start >>= moveKnight >>= moveKnight >>= moveKnight

reachin3 :: KnightPos -> KnightPos -> Bool
reachin3 start end = end `elem` in3 start


