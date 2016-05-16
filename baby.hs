import Data.Char

doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

a = [1,3,5,7,2,4,6,8]

b = ['z','h','a','n','g','l','i']

factorial :: Integer -> Integer
factorial n = product [1..n]

tou :: [a]->a
tou[] = error"Can't call tou on an empty list."
tou(x:_) = x

length1 :: (Num b)=>[a]->b
length1 [] = 0
length1 (x:el) = 1 + length1 el

sum1 ::(Num a)=> [a]->a
sum1[] = 0
sum1(x:el) = x + sum1 el

bmiQA :: (RealFloat a)=>a->a->String
bmiQA weight height
    | bmi <= skinny = "skinny"
    | bmi <= normal = "normal"
    | bmi <= fat = "fat"
    | otherwise = "too fat"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25
          fat = 30
          
max1 :: (Ord a)=> a->a->a
max1 a b 
    | a>b = a
    | otherwise = b

head2 :: [a]->a
head2 xs = case xs of [] -> error"empty list!"
                      (x:_) -> x
                      
maximum1 :: (Ord a) => [a]->a
maximum1 [] = error"empty list!"
maximum1 [x] = x
maximum1 (x:xs) = max x (maximum1 xs)

replicate1 :: (Num i, Ord i) => i-> a -> [a]
replicate1 x y
    | x <= 0    = []
    | otherwise = y:replicate1 (x-1) y
    
take1 :: (Num i, Ord i) => i->[a]->[a]
take1 n _
    | n<=0 = []
take1 _ [] = []
take1 n (x:xs) = x:take1 (n-1) xs

reverse1 :: [a]->[a]
reverse1 [] = []
reverse1 (x:xs) = reverse1 xs ++ [x]

zip1 :: [a]->[b]->[(a,b)]
zip1 [] _ = []
zip1 _ [] = []
zip1 (x:xs) (y:ys) = (x,y) : zip1 xs ys

elem1 :: (Eq a) => a->[a]->Bool
elem1 a [] = False
elem1 a (x:xs)
    | a == x =True
    | otherwise = elem1 a xs
    
quicksort :: (Ord a)=>[a]->[a]
quicksort [] = []
quicksort (x:xs) = 
    let smaller = quicksort[a | a<-xs, a<=x]
        larger = quicksort [a | a<-xs, a>x]
    in smaller ++ [x] ++ larger
    
divideByTen :: (Floating a)=>a->a
divideByTen = (/10)

applyTwice :: (a->a)->a->a
applyTwice f x  = f (f x)

zipWith1 :: (a->b->c)->[a]->[b]->[c]
zipWith1 _ [] _ = []
zipWith1 _ _ [] = []
zipWith1 f (x:xs) (y:ys) = f x y : zipWith1 f xs ys

map1 :: (a->b)->[a]->[b]
map1 _ [] = []
map1 f (x:xs) = f x : map1 f xs

sum2 :: (Num a) => [a] -> a
sum2 xs = foldl(\acc x -> acc + x) 0 xs  

sum3 :: (Num a) => [a] -> a
sum3 = foldl(+)0

data PersonInfo = Person String String String Int deriving (Show)
zhangli = Person "Li" "Zhang" "male" 25

data Colors = Black
            | White
            | Blue
              deriving (Show, Eq)
              
sumList (x:xs) = x + sumList xs
sumList [] = 0 

personFirstName (Person first _ _ _) = first
personLastName  (Person _ last2 _ _) = last2
personAge       (Person _ _ _ age) = age 
personGender    (Person _ _ gender _) = gender

data Customer = Customer {
    customerID :: Int,
    customerNmae :: String,
    customerAddress :: [String]
} deriving(Show)

qcw = Customer 1 "Qiaochu Wang" ["1600 S Joyce ST", "Arlington, VA", "22202"]

findSecond :: [a] -> Maybe a
findSecond [] = Nothing
findSecond (x:xs) 
    | null xs = Nothing
    | otherwise = Just $ head xs
    
withDraw :: (Num a, Ord a) => a -> a -> a
withDraw amount balance
    | amount > balance = error "Balance not enough."
    | otherwise = balance - amount
    
oddList :: (Integral a) => [a] -> [a]
oddList [] = []
oddList (x:xs) 
    | odd x = x : oddList xs
    | otherwise = oddList xs
    
data Waibiao = Haokan | Nankan deriving (Eq, Show)

data Zhangli = Zhangli Waibiao deriving (Eq, Show)

meiRen :: Waibiao -> Bool
meiRen Haokan = True
meiRen _ = False

shishi :: (a, b) -> (c, d) -> ((b, d), (a, c))
shishi (a, b) (c, d) = ((b, d), (a, c))

first3 :: (a, b, c) -> a
first3 (x, _, _) = x

third3 :: (a, b, c) -> c
third3 (_, _, x) = x

k (x, y) = x
k1 = k ((4-1), 10)
k2 = k ("three", (1 + 2)) 
k3 = k (3, True)

f1 :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f1 (a, b, c) (d, e, f) = ((a, d), (c, f))

nameZl x = 
    case y of
        True -> "Yeah"
        False -> "Nope"
    where y = length x == 7
    
functionC x y = 
    case z of
        True -> x
        False -> y
    where z = x > y
    
ifEvenAdd2 n =
    case m of
        True -> n + 2
        False -> n
    where m = even n
    
ageJudge :: Integer -> String
ageJudge n
    | n < 21 = "Cannot drink alcohol."
    | n < 50 = "Strong!"
    | n < 65 = "Should relax."
    | otherwise = "Enjoy!"
    
isRight :: (Num a, Eq a) => a -> a -> a -> Bool
isRight x y z
    | x^2 + y^2 == z^2 = True
    |otherwise = False
    
grade :: (Fractional a, Ord a) => a -> Char
grade x
    | y >= 0.85 = 'A'
    | y >= 0.7 = 'B'
    | y >= 0.6 = 'C'
    | otherwise = 'F'
    where y = x / 100
    
numa = length . filter (=='a')


captal :: String -> String
captal [] = []
captal (x:xs) = toUpper x : xs

upAll :: String -> String
upAll [] = []
upAll (x:xs) = toUpper x : upAll xs

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs 

myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) 
    | f x = True
    | otherwise = myAny f xs
    
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem a (x:xs)
    | a == x = True
    | otherwise = myElem a xs
    
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

fib :: (Num a, Ord a) => a -> a
fib n
  | n <= 0 = error "This should be a positive integer!"
  | n == 1 = 0
  | n == 2 = 1
  | otherwise = fib (n-1) + fib (n-2) 
  
fiblist :: (Ord a, Num a) => a -> [a]
fiblist n
  | n <= 0 = error "This should be a positive integer!"
  | n == 1 = [0]
  | otherwise = fiblist (n-1) ++ [fib n]