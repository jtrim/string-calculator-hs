module StringCalculator.Split (split) where
  import Text.Regex.Posix
  import StringCalculator.Input
  import StringCalculator.Models.DelimitedInput

  split input = _split numbers delimiter []
    where (DelimitedInput delimiter numbers) = refine input

  _split "" _ acc = acc
  _split input delimiter acc = _split tail delimiter $ acc ++ [head]
    where (head, tail) = input // delimiter

  takeUntil input delimiter = (head, tail)
    where (head, _, tail) = input =~ delimiter :: (String, String, String)
  (//) = takeUntil -- alias for takeUntil
