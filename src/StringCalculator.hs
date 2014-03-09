module StringCalculator where
  import StringCalculator.Coercion
  import StringCalculator.Split
  import StringCalculator.Validation
  import Text.Regex.Posix
  import Data.List

  add "" = 0
  add input = sum $ validate $ map integer $ split input
