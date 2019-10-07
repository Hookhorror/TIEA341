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

-- Jotta jokin olisi tyypiltään OneOrTwo Int Bool, sen 'jokin' täytyy olla joku näistä kolmesta:
-- This x (missä x on mikä tahansa Int),
-- That b (missä b on mikä tahansa Bool), tai
-- These x b (missä x on mikä tahansa Int ja b mikä tahansa Bool)

-- joo ei ymmärrä, KYSY
-- combine :: Vector2 Int -> Maybe (Vector2 Int) -> OneOrTwo Int Bool

-- combine3 :: Vector2 Int -> Maybe Bool -> Maybe String 
--              -> OneOrTwo Int (OneOrTwo Bool String)

third :: (a,b,c) -> c
third (a,b,c) = c
first (a,b,c) = a

submitDay :: Submission -> Int
joni = S "Joni" "jeejee" (10,10,10)
submitDay (S x y z) = first z

-- getOther :: OneOrTwo a b -> Maybe b


main :: IO ()
main = do
  putStrLn "hello world"
