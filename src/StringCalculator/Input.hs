module StringCalculator.Input (DelimitedInput(..), refine) where
  import Text.Regex.Posix
  import Data.List

  defaultDelimiter       = ",|\n"
  customDelimiterPattern = "//(.*)\n"

  data DelimitedInput = DelimitedInput {
                          delimiter :: String,
                          delimitedNumbers :: String } deriving (Eq, Show)

  refine input = extractDelimiterMatchFrom $ matchAgainst input

  matchAgainst input = input =~ customDelimiterPattern :: (String, String, String, [String])

  extractDelimiterMatchFrom (numbers, _, _, [])         = DelimitedInput defaultDelimiter numbers
  extractDelimiterMatchFrom (_, _, numbers, delimiters) = DelimitedInput (customDelimiter delimiters) numbers

  customDelimiter delims = (intercalate "|" [defaultDelimiter, head delims])
