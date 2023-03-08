module Palindrome where

import Data.Text as T (Text, filter, pack, reverse, toLower, elem)
import Data.Char (isSpace, isPunctuation, toLower)

isPalindrome :: String -> Bool
isPalindrome as = loweredAs == T.reverse loweredAs
    where
        loweredAs = T.toLower (T.pack nonSpaceAs)
        nonSpaceAs = [a | a <- nonPunctuation, not (a `T.elem` T.filter isSpace (T.pack nonPunctuation))]
        nonPunctuation = [a | a <- as, not (a `T.elem` T.filter isPunctuation (T.pack as))]




--nonSpaceAs = [a | a <- as, a `notElem` (T.filter isSpace (T.pack as))]