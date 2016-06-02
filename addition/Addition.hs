module Addition where

import Test.Hspec

divideBy :: Integral a => a -> a -> (a, a)
divideBy m n = sub m n 0
  where sub a b c
          | a < b = (c, a)
          | otherwise = sub (a - b) b (c + 1)

main :: IO ()
main = hspec $ do
  describe "Addition" $ do
    it "1 + 1 is greater than 1" $ do
      (1 + 1) > 1 `shouldBe` True 
    it "2 + 2 is equal to 4" $ do
      2 + 2 `shouldBe` 4
    it "15 divided by 3 is 5" $ do
      divideBy 15 3 `shouldBe` (5, 0)
    it "22 divided by 4 is 5 remainder 2" $ do
      divideBy 22 4 `shouldBe` (5, 2)
