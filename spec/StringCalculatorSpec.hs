module StringCalculatorSpec where

  import Test.Hspec

  spec = do

    it "works" $ do
      a `shouldBe` 3
        where
          a = 1
          b = 1

  main = hspec spec
