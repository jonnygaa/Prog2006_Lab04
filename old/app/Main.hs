module Main (main) where

import Lib
import System.IO  
import Control.Monad
import Data.List

main :: IO ()
main = do  
    handle <- openFile "stud.txt" ReadMode
    contents <- hGetContents handle
    let age = sort [map read (words x)!!2 ::Int | x <- (lines contents)]
    let oldest = [x | x <- age, x == (last age)]
    print (length oldest)