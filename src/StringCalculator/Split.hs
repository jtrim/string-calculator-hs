module StringCalculator.Split (split) where
  import Text.Regex.Posix
  import StringCalculator.Input
  import StringCalculator.Models.DelimitedInput

  split input = _split numbers delimiter []
    where (DelimitedInput delimiter numbers) = refine input

  _split "" _ acc = acc
  _split input delimiter acc = _split inputTail delimiter $ acc ++ [inputHead]
    where (inputHead, inputTail) = input // delimiter

  takeUntil input delimiter = (inputHead, inputTail)
    where (inputHead, _, inputTail) = input =~ delimiter :: (String, String, String)
  (//) = takeUntil -- alias for takeUntil
