module List.Reverse
  (
    reverseList
  ) where

reverseList :: [any] -> [any]
reverseList [] = []
reverseList (head:tail) = reverseList tail ++ [head]
