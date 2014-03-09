module StringCalculator.Input (refine) where
  import Data.List
  import Text.Regex.Posix
  import StringCalculator.Models.DelimitedInput

  defaultDelimiter       = ",|\n"
  customDelimiterPattern = "//(.*)\n"

  refine input = extractDelimiterMatchFrom $ matchAgainst input

  matchAgainst input = input =~ customDelimiterPattern :: (String, String, String, [String])

  extractDelimiterMatchFrom (numbers, _, _, [])         = DelimitedInput defaultDelimiter numbers
  extractDelimiterMatchFrom (_, _, numbers, delimiters) = DelimitedInput (customDelimiter delimiters) numbers

  customDelimiter delims = (intercalate "|" [defaultDelimiter, head delims])
