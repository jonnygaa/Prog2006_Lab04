module Mul (mulTable) where

-- >>> mulTable 5
--  1  2  3  4  5
--  2  4  6  8 10
--  3  6  9 12 15
--  4  8 12 16 20
--  5 10 15 20 25
--
-- >>> mulTable 3
--  1  2  3
--  2  4  6
--  3  6  9

pad :: String -> String
pad a
    | length a < 4 = replicate (4 - length a) ' ' ++ a
    | otherwise = a

-- Adds newline to every xth element
row :: Int -> Int -> String -> String
row x y z
    | y `rem` x == (x-1) = z ++ "\n"
    | otherwise = z

mulTable :: Int -> IO()
mulTable 0 = putStrLn ""
mulTable x 
    | x > 31 = putStrLn "Max size 31"
    | x < 0 = putStrLn "Min size 0"
    | otherwise = do
    let a = [1..x]
    let b = [x*y | x <- a, y <- a]
    let c = [pad (show x)| x <- b]
    let d = [row x y (c!!y)| y <- [0..(x*x-1)]]
    let e = concat d
    putStrLn e

