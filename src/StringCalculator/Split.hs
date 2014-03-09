module StringCalculator.Split (split) where
  import Text.Regex.Posix
  import Data.List
  import qualified StringCalculator.Input as Input

  split input = split' numbers delimiter []
    where (Input.DelimitedInput delimiter numbers) = Input.refine input

  --

  split' "" _ acc = acc
  split' input delimiter acc = split' inputTail delimiter $ acc ++ [inputHead]
    where (inputHead, inputTail) = splitOnce input delimiter

  splitOnce input delimiter = (inputHead, inputTail)
    where (inputHead, _, inputTail) = input =~ delimiter :: (String, String, String)
