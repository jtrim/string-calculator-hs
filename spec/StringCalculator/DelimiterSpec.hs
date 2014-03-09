module StringCalculator.DelimiterSpec where

  import Test.Hspec
  import qualified StringCalculator.Delimiter as Subject

  spec = do
    describe "delimiter" $ do

      context "when given a string without a custom delimiter" $ do
        it "returns the default delimiter" $ do
          Subject.delimiter "1,2" `shouldBe` (",|\n", "1,2")

      context "when given a string containing a custom delimiter" $ do
        it "returns the custom delimiter" $ do
          Subject.delimiter "//;\n1;2" `shouldBe` (",|\n|;", "1;2")

  main = hspec spec
