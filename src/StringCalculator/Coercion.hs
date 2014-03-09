module StringCalculator.Coercion (integer, string) where
  integer n = read n :: Integer
  string n  = show n
