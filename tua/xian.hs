class Xian a where
  xian :: a -> String

data Lang = Python | Ruby | Java | Scala

instance Xian Lang where
  xian Python = "Python"
  xian Ruby = "Ruby"
  xian Java = "Java"
  xian Scala = "Scala"

data Chuan a = Wu | Jie a (Chuan a)

instance (Xian a) => Xian (Chuan a) where
  xian Wu = "Kong"
  xian (Jie x xs) = xian x ++ " Jie " ++ xian xs
