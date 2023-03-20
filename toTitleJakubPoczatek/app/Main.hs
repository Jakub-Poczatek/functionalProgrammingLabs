module Main (main) where

import Utils
import Data.Text as T (pack)

main :: IO ()
main = do
    input <- getLine
    let result = toTitle (T.pack input)
    print result
