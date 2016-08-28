class Deng a where
  deng,budeng :: a -> a -> Bool
  deng x y = not (budeng x y)
  budeng x y = not (deng x y)

data Family = Zhang | Wang

instance Deng Family where
  deng Zhang Zhang = True
  deng Wang Wang = True
  deng _ _ = False

instance Deng a => Deng [a] where
  deng [] [] = True
  deng (x:xs) (y:ys) = deng x y && deng xs ys
