module StringCalculator.Split (split) where
  import Data.List
  import Text.Regex.Posix
  import StringCalculator.Input
  import StringCalculator.Models.DelimitedInput

  split input = split' numbers delimiter []
    where (DelimitedInput delimiter numbers) = refine input

  split' "" _ acc = acc
  split' input delimiter acc = split' inputTail delimiter $ acc ++ [inputHead]
    where (inputHead, inputTail) = splitOnce input delimiter

  splitOnce input delimiter = (inputHead, inputTail)
    where (inputHead, _, inputTail) = input =~ delimiter :: (String, String, String)
