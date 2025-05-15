module Main (main) where

import Lib

addNumber :: Num a => a -> a -> a
addNumber a b = a + b

sti :: String -> Int
sti s = read s

-- Version A
newtype AgeA = AgeA Int deriving (Show, Eq)
addAgeA :: AgeA -> AgeA -> AgeA
addAgeA (AgeA a) (AgeA b) = AgeA (a + b)

-- Version B
type Age = Int
addAgeB :: Age -> Age -> Age
addAgeB a b = a + b


main :: IO ()
main = do
  putStrLn "Task 1"
  putStrLn "hello, world"
  putStrLn "Task 2"
  putStrLn "What is your name?"
  name <- getLine
  putStrLn ("Hello " ++ name)
  putStrLn "Task 3"
  putStrLn "Hi, what is your name?"
  name <- getLine
  putStrLn "and what is your age?"
  age <- getLine
  let ageInt = read age :: Int
  -- let ageA = ageInt :: AgeA
  -- let ten = 10 :: AgeA
  putStrLn ("A Hello " ++ name ++ ", in 10 years you will be " ++ show(addAgeA (AgeA ageInt) (AgeA 10)) ++ ".")
  putStrLn ("B Hello " ++ name ++ ", in 10 years you will be " ++ show(addAgeB ageInt 10) ++ ".")
