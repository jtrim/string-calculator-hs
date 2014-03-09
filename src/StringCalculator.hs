module StringCalculator where
  import Data.List
  import Text.Regex.Posix
  import StringCalculator.Coercion
  import StringCalculator.Split
  import StringCalculator.Validation

  add "" = 0
  add input = sum $ validate $ map integer $ split input
