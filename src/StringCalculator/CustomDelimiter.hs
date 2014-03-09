module StringCalculator.CustomDelimiter (delimiter, pattern) where
  import Data.List
  import qualified StringCalculator.DefaultDelimiter as Default

  pattern = "//(.*)\n"

  delimiter additionalDelims = (intercalate "|" [Default.delimiter, head additionalDelims])
