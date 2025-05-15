import Test.Hspec
import Test.QuickCheck
import Test.DocTest
import R(mreverse)

test :: [Int] -> Property
test a = not (null a) ==> mreverse [a] == reverse  [a]

-- main :: IO ()
-- main = hspec $ do
--   describe "m function" $ do
--     it "mreverse =  reverse" $ property test
main = doctest ["-isrc", "src/R.hs"]