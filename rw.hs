import Data.Char(digitToInt)

data MealInfo = Meal {
        mealName :: String
      , mealNumber :: Int
      , mealnote :: [String]
      } deriving (Show)      


lunch = Meal "Gongbaojiding" 2 ["no pepper","more onion"]

supper = Meal "Yuxiangrousi" 2 ["more heimuer","hot pepper"]

sameMealNumber :: MealInfo -> MealInfo -> Bool
sameMealNumber (Meal _ a _) (Meal _ b _)
  | a == b = True
  | otherwise = False

data Roygbiv = Red
             | Orange
             | Yellow
             | Green
             | Blue
             | Indigo
             | Violet
               deriving (Eq, Show)

mySecond :: [a] -> Maybe a
mySecond l@(x:xs)
  | length l < 2 = Nothing
  | otherwise = Just (head xs)

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs


hui :: (Num a, Eq a) => [a] -> Bool
hui [] = True
hui (x:xs) 
  | x == last xs = hui.init $ xs
  | otherwise = False

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x:xs) = Just xs

safeLast :: [a] -> Maybe a
safeLast l@(x:xs)
  | null l = Nothing
  | null xs = Just x
  | otherwise = safeLast xs

safeInit :: [a] -> Maybe [a]
safeInit l@(x:xs)
  | null l = Nothing
  | null xs = Just []
  | otherwise = Just (x : safeInit' xs)
      where safeInit' m@(y:ys)
              | null m = []
              | null ys = []
              | otherwise = y : safeInit' ys 

splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith t l = [take n l, drop n l]
  where n = cal t l
            where cal t l@(x:xs)
                    | t x = 1 + cal t xs
                    | otherwise = 0
        
fourth :: String -> String
fourth = unlines.inner.lines

inner :: [String] -> [String]
inner [l@(x:xs), m@(y:ys)]
  | null l = [[]]
  | null m = [[]]
  | otherwise = ([x]++[y]) : inner [xs, ys] 
inner _ = []

asInt xs = loop 0 xs 

loop :: Int -> String -> Int
loop acc [] = acc
loop acc (x:xs) = loop (10 * acc + digitToInt x) xs 

