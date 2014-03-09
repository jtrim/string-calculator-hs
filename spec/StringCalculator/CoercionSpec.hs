module StringCalculator.CoercionSpec where

  import Test.Hspec
  import qualified StringCalculator.Coercion as Subject

  spec = do
    describe "integer" $ do
      it "converts a string number to an integer" $ do
        Subject.integer "0" `shouldBe` 0

    describe "string" $ do
      it "converts an integer to a string" $ do
        Subject.string 4 `shouldBe` "4"
