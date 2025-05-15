import Test.Hspec
import Test.QuickCheck
import M(m1, m2)

test1 :: [Int] -> Property
test1 a = not (null a) ==> m1 a == head a

test2 :: [Int] -> Property
test2 a = not (null a) ==> m2 a == head a

main :: IO ()
main = hspec $ do
  describe "m functions" $ do
    it "m1 =  head" $ property test1
    it "m2 =  head" $ property test2