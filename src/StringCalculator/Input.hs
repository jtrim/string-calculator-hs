module StringCalculator.Input (refine) where
  import Text.Regex.Posix
  import qualified StringCalculator.CustomDelimiter  as CustomDelimiter
  import qualified StringCalculator.DefaultDelimiter as DefaultDelimiter
  import StringCalculator.Models.DelimitedInput

  refine input = extractDelimitedInputFrom $ matchAgainst input

  matchAgainst input = input =~ CustomDelimiter.pattern :: (String, String, String, [String])

  extractDelimitedInputFrom (numbers, _, _, [])         = defaultDelimitedInput numbers
  extractDelimitedInputFrom (_, _, numbers, delimiters) = customDelimitedInput numbers delimiters

  defaultDelimitedInput numbers = DelimitedInput DefaultDelimiter.delimiter numbers
  customDelimitedInput numbers delimiters = DelimitedInput (CustomDelimiter.delimiter delimiters) numbers
