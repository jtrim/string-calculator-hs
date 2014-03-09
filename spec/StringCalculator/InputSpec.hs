module StringCalculator.InputSpec where

  import Test.Hspec
  import qualified StringCalculator.Input as Subject
  import StringCalculator.Models.DelimitedInput

  spec = do
    describe "refine" $ do

      context "when given a string without a custom delimiter" $ do
        it "returns a DelimitedInput with the default delimiter" $ do
          Subject.refine "1,2" `shouldBe` DelimitedInput ",|\n" "1,2"

      context "when given a string containing a custom delimiter" $ do
        it "returns the custom delimiter" $ do
          Subject.refine "//;\n1;2" `shouldBe` DelimitedInput ",|\n|;" "1;2"
