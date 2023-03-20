module Utils where

import Data.Text as T (Text, toTitle)

toTitle :: Text -> Text
toTitle t = T.toTitle t