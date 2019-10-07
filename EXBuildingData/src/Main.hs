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


data OneOrTwo = YksiVaiKaksi Int Bool deriving(Show)

--combine :: Vector2 Int -> Maybe (Vector2 Int) -> OneOrTwo Int Bool
--combine n maybe (m) = case Maybe m of
--                      Nothing -> YksiVaiKaksi 1 True
--                      Just m  -> YksiVaiKaksi 2 True

--combine3 :: Vector2 Int -> Maybe Bool -> Maybe String 
--             -> OneOrTwo Int (OneOrTwo Bool String)


newtype SubmitDay = SubD Submission deriving(Eq,Ord,Show)
newtype Submission = Sub Int deriving(Eq,Ord,Show)

submitDay :: Submission -> Int
submitDay (Sub x) = x

-- Tämä on tällä hetkellä vaiheessa
getOther :: OneOrTwo a b -> Maybe b
getOther OneOrTwo a b = case b of
                        Just b -> Just b
                        Nothing -> a

main :: IO ()
main = do
  putStrLn "hello world"
