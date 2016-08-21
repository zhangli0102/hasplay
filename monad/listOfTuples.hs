listOfTuples :: [(Int, Char)]
listOfTuples = do
  i <- [1..26]
  c <- ['a'..'z']
  return (i,c)

