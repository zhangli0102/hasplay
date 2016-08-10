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
