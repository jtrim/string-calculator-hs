module StringCalculator.ValidationSpec where

  import Test.Hspec
  import qualified StringCalculator.Validation as Subject
  import Control.Exception (evaluate)

  spec = do
    describe "validate" $ do

      context "when negative numbers are present" $ do
        it "throws an error" $ do
          evaluate(Subject.validate [-1, -2, 1, 2]) `shouldThrow` errorCall "negatives not allowed: -1,-2"

      context "when valid" $ do
        it "returns the input" $ do
          Subject.validate [1,2,3] `shouldBe` [1,2,3]
