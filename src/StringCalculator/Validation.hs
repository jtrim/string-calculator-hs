module StringCalculator.Validation (validate) where
  import StringCalculator.Coercion
  import Data.List

  validate numbers
    | hasNegatives = error $ "negatives not allowed: " ++ join negatives
    | otherwise    = numbers
    where
      negatives    = filter (< 0) numbers
      hasNegatives = length negatives > 0

  --

  join numbers = intercalate "," $ map string numbers
