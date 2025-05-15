module M (m1, m2) where

m1 :: [a] -> a
m1 (x:_) = x

m2 :: [a] -> a
m2 = foldl1 (\x _ -> x)