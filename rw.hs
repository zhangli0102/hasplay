data MealInfo = Meal {
        mealName :: String
      , mealNumber :: Int
      , mealnote :: [String]
      } deriving (Show)      


lunch = Meal "Gongbaojiding" 2 ["no pepper","more onion"]

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
