module List.ReverseSpec (main, spec) where

import Test.Hspec
import List.Reverse

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "reverse" $ do
    it "reverses content in a char list" $ do
      List.Reverse.reverseList ["1","2"] `shouldBe` ["2","1"]
    it "reverses content in a numeric list" $ do
      List.Reverse.reverseList [1,2] `shouldBe` [2,1]
    it "reverses content in a list with duplicated elements" $ do
      List.Reverse.reverseList [1,2,1] `shouldBe` [1,2,1]
