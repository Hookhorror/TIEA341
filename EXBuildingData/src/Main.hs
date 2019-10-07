module Main where

newtype Meter = M Double deriving(Eq,Ord,Show)

asMeters :: Double -> Meter
asMeters n = M n

fromMeters :: Meter -> Double
fromMeters (M n) = n


newtype Length = L Int deriving(Eq,Ord,Show)

asLength :: Int -> Length
asLength n = L n


newtype Vector2 = V2 Int deriving(Eq,Ord,Show)

mkVector :: Int -> Int -> Vector2
mkVector n m = V2 (n * m)


--combine :: Vector2 Int -> Maybe (Vector2 Int) -> OneOrTwo Int Bool

--combine3 :: Vector2 Int -> Maybe Bool -> Maybe String 

-- submitDay :: Submission -> Int

-- getOther :: OneOrTwo a b -> Maybe b


main :: IO ()
main = do
  putStrLn "hello world"
