module Practice where
  import Data.Char
  import Data.Time
  take1 :: Eq a => Int -> [a] -> [a]
  take1 n (x:xs)
    | (x:xs) == [] = []
    | n <= 0 = []
    | otherwise = x : take1 (n-1) xs
    
  roots :: (Float, Float, Float) -> (Float, Float)
  roots (a, b, c) 
    | a == 0 = error "the coefficient of square cannot be zero"
    | d < 0 = error "delta should not be negatice"
    | otherwise = ((-b + sqrt d)/(2*a), (-b - sqrt d)/(2*a))
    where d = b*b - 4 * a * c
    
  modernize :: String -> String
  modernize ys = let a = map (\(x:xs) -> toUpper x : map toLower xs) . words $ ys in unwords a
  
  power1 :: Integer -> Integer -> Integer
  power1 x n
    | n == 0 = 1
    | n == 1 = x
    | otherwise = x * power1 x (n-1)
    
  power2 :: Integer -> Integer -> Integer
  power2 x n
    | n == 0 = 1
    | n == 1 = x
    | even n = power2 (x*x) (n `div` 2)
    | odd n = x * power2 x (n-1)
    
  showDate :: (Int,Int,Int) -> String
  showDate (m,d,y) = month !! (m-1) ++ " " ++ show d ++ suffix d ++ ", " ++ show y
  
  suffix :: Int -> String
  suffix x 
    | x == 1 || x == 11 || x == 21 || x == 31 = "st"
    | x == 2 || x == 12 || x == 22 = "nd"
    | x == 3 || x == 13 || x == 23 = "rd"
    | otherwise = "th"
    
  month = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
  
  palindrome :: IO()
  palindrome = do {
    putStrLn "Input a sentence:";
    sen <- getLine;
    if isPalindrome sen then putStrLn "Yes!"
    else putStrLn "Not really~"
  }
  
  isPalindrome :: String -> Bool
  isPalindrome x = let y = map toLower $ filter isAlpha x in y == (reverse y)
  
  last' :: [a] -> a
  last' [x] = x
  last' (x:xs) = last' xs
  
  disjoint :: (Ord a) => [a] -> [a] -> Bool
  disjoint _ [] = True
  disjoint [] _ = True
  disjoint a@(x:xs) b@(y:ys)
    | x == y = False
    | x > y = disjoint a ys
    | x < y = disjoint xs b
    
  rama :: (Num a, Enum a, Eq a) => a -> [(a,a,a,a)]
  rama n = [(a,b,c,d) | a <- [1..n], b <- [a..n], c <- [a+1..n], d <- [c..n], a ^ 3 + b ^ 3 == c ^ 3 + d ^ 3]
  
  take' :: Integer -> [a] -> [a]
  take' _ [] = []
  take' 0 _ = []
  take' n (x:xs) = x : take' (n-1) xs
  
  exp' :: Fractional a => a -> Integer -> a
  exp' x 0 = 1
  exp' x n
    | n < 0 = 1 / (exp' x (-n))
    | otherwise = x * exp' x (n-1)
  
  merge :: (Ord a) => [a] -> [a] -> [a]
  merge a [] = a
  merge [] b = b
  merge a@(x:xs) b@(y:ys) 
    | x < y = x : merge xs b
    | x == y = x : merge xs ys
    | x > y = y : merge a ys