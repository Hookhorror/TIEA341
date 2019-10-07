module Main where



newtype Meter = M Double 
  deriving (Eq,Ord,Show)

type Length = Int

data Vector2 a = V2 a a 
  deriving (Eq,Show)

data OneOrTwo a b = This a | That b | These a b
  deriving (Eq,Show)

data Submission 
  = S {student :: String, content :: String, date :: (Int,Int,Int)}
    deriving (Eq,Show)


asMeters :: Double -> Meter
asMeters x = M x

fromMeters :: Meter -> Double
fromMeters (M x) = x

asLength :: Int -> Length
asLength x = x

mkVector :: Int -> Int -> Vector2 Int
mkVector x y = V2 x y

-- combine :: Vector2 Int -> Maybe (Vector2 Int) -> OneOrTwo Int Bool


-- combine3 :: Vector2 Int -> Maybe Bool -> Maybe String 
--              -> OneOrTwo Int (OneOrTwo Bool String)

-- submitDay :: Submission -> Int

-- getOther :: OneOrTwo a b -> Maybe b 


main :: IO ()
main = do
  putStrLn "hello world"
