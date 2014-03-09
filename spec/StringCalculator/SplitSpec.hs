module StringCalculator.SplitSpec where
  import Test.Hspec
  import qualified StringCalculator.Split as Subject
  import Text.Regex.Posix

  spec = do

    describe "split" $ do

      it "splits a given string on a comma" $ do
        Subject.split "1,2,3,4" `shouldBe` ["1", "2", "3", "4"]

      it "splits a given string on both newlines and commas" $ do
        Subject.split "1,2\n3\n4" `shouldBe` ["1", "2", "3", "4"]

      it "splits on a custom delimiter" $ do
        Subject.split "//;\n1;2\n3,4;5" `shouldBe` ["1", "2", "3", "4", "5"]

  main = hspec spec
