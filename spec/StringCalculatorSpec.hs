module StringCalculatorSpec where
  import Test.Hspec
  import qualified StringCalculator as Subject
  import Control.Exception (evaluate)

  spec = do

    describe "add" $ do

      it "returns 0 when given an empty string" $ do
        Subject.add "" `shouldBe` 0

      it "returns that number when given a single number" $ do
        Subject.add "1" `shouldBe` 1

      it "returns the sum of two numbers" $ do
        Subject.add "1,2" `shouldBe` 3

      it "returns the sum of many numbers" $ do
        Subject.add "1\n2,3\n4,5" `shouldBe` 15

      it "returns the sum of a string that specifies a custom delimiter" $ do
        Subject.add "//#\n1,2\n3#4,5" `shouldBe` 15

      it "raises an error when negatives are present" $ do
        evaluate(Subject.add "-1,2,-2") `shouldThrow` errorCall "negatives not allowed: -1,-2"
