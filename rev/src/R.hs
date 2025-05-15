module R (mreverse) where

-- | mreverse is my own implementation of list reversal
--
-- >>> mreverse [1,2,3]
-- [3,2,1]
--
-- >>> mreverse "Hello"
-- "olleH"

mreverse :: [a] -> [a]
mreverse [] = []
mreverse (x:xs) = mreverse xs ++ [x]