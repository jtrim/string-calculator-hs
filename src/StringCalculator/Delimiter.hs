module StringCalculator.Delimiter (delimiter) where
  import Text.Regex.Posix
  import Data.List

  delimiter input
    | length delimiters > 0 = (intercalate "|" [defaultDelimiter, head delimiters], matchTail)
    | otherwise             = (defaultDelimiter, matchHead)
    where (matchHead, _, matchTail, delimiters) = input =~ customDelimiterPattern :: (String, String, String, [String])

  defaultDelimiter = ",|\n"
  customDelimiterPattern = "//(.*)\n"
