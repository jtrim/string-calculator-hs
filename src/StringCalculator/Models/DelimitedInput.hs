module StringCalculator.Models.DelimitedInput (DelimitedInput(..)) where

  data DelimitedInput = DelimitedInput {
                          delimiter :: String,
                          delimitedNumbers :: String } deriving (Eq, Show)
