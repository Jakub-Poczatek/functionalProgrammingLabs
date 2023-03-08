module Main (main) where

import Lib
import Palindrome

main :: IO ()
main = do
    input <- getLine
    let result = isPalindrome input
    if result then print "It is a palindrome"
    else print "It is not a palindrome"
