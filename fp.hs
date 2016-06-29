module FirstPrinciples where

rvs :: String -> String
rvs [] = []
rvs (x:xs) = rvs xs ++ [x]

myAbs :: Integer -> Integer
myAbs a = if a > 0 then a
    else -a

pal :: String -> String
pal xs =
    case xs == rvs xs of
        True -> "Yeah!"
        False -> "Na Na"

beautyIdentifier :: String -> IO()
beautyIdentifier name =
    case x of
        True -> putStrLn "Very beautiful! No.1"
        False -> putStrLn "Also very beautiful, but only No.2"
    where x = name == "zhangli"

fibonacci :: Integral a => a -> a
fibonacci 1 = 1
fibonacci 2 = 2
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) = f x || myAny f xs

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem y (x:xs) = y == x || myElem y xs

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

myOr2 :: [Bool] -> Bool
myOr2 = foldr (||) False

rvs2 :: [a] -> [a]
rvs2 = foldl (flip (:)) [] 

myAny2 :: (a -> Bool) -> [a] -> Bool
myAny2 f = foldr ((||).f) False

myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr ((:).f) []


data Price = Price Integer deriving (Show, Eq)
data Airline = JetBlue | UnitedAirlines | AmericanAirlines deriving (Show, Eq)
data MoterWerk = BMW | Mercedes | Audi deriving (Show, Eq)

data Vehicle = Car MoterWerk Price | Plane Airline deriving (Show, Eq)

myCar = Car Mercedes (Price 100000)
myPlane = Plane UnitedAirlines

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _ = False

areCars :: [Vehicle] -> Bool
areCars [] = True
areCars (x:xs)
  | isCar x = areCars xs
  | otherwise = False

getWerk :: Vehicle -> MoterWerk
getWerk (Car a b) = a
getWerk _ = error "The input should be a constrctor of Car datatype."

isPlane :: Vehicle -> Bool
isPlane (Plane _) = True
isPlane _ = False

qwCar = Car Audi (Price 50000)

cb :: Vehicle -> MoterWerk
cb (Car b _) = b

pb :: Vehicle -> Airline
pb (Plane a) = a

data Sedan = Sedan deriving Show
data SUV = SUV deriving Show
data AutoType = SedanAuto Sedan | SUVAuto SUV deriving Show

type DriverName = String
data Driver = Driver (DriverName, AutoType)

data JamJars = JamJars {
	       fruit :: String
	     , num :: Int
	     } deriving (Eq, Show, Ord)

peach = JamJars "Peach" 2
plum = JamJars "Plum" 7
apple = JamJars "Apple" 5
blackberry = JamJars "Blackberry" 10

type Age = Int
type Name = String
 
data Person = Person Name Age deriving Show

data PersonInvalid = NameEmpty | AgeTooLow deriving (Show, Eq)

mkPerson :: Name -> Age -> Either PersonInvalid Person
mkPerson name age
  | name /= "" && age >= 0 = Right $ Person name age
  | name == "" = Left NameEmpty
  | otherwise = Left AgeTooLow

