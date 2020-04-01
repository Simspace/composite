module Composite.Opaleye.Util where

import Data.Profunctor (dimap)
import Opaleye (Column, ToFields, unsafeCoerceColumn)

-- |Coerce one type of 'Column' 'ToFields' profunctor to another using by just asserting the changed type on the column side and using the given function
-- on the Haskell side. Useful when the PG value representation is the same but the Haskell type changes, e.g. for enums.
constantColumnUsing :: ToFields haskell (Column sqlType)
                    -> (haskell' -> haskell)
                    -> ToFields haskell' (Column sqlType')
constantColumnUsing oldToFields f = dimap f unsafeCoerceColumn oldToFields
