module Main where

--f1 :: (Int,Char,Bool) -> ? Char
--f2 :: (a,b,c) -> ? b
--f3 :: (a,(b,c,d),e) -> ? c
--f4 :: [a] -> ? a
--f5 :: Either Int String -> ? String
--f6 :: Either a b -> ? b
--g1 :: Maybe a -> b -> ? (Either a b)
--g2 :: a -> b -> ? (a,b)
--g3 :: a -> b -> ? (Either a b)




f1 :: (Int,Char,Bool) -> Char
f1 (a,b,c) = b

f2 :: (a,b,c) -> b
f2 (a,b,c) = b

f3 :: (a,(b,c,d),e) -> c
f3 (a,(b,c,d),e) = c

f4 :: [a] -> Maybe a
f4 a = case a of
  [] -> Nothing
  b:_ -> Just b

f5 :: Either Int String -> String
f5 x = case x of
      Left _ -> "Not a string"
      Right a -> a

-- eeeeeeeeehkä
f6 :: Either a b -> Maybe b
f6 x = case x of
      Left _ -> Nothing
      Right a -> Just a 

g1 :: Maybe a -> b -> (Either a b)
g1 x y = case x of
        Nothing -> Right y
        Just z -> Left z

-- g2 :: a -> b -> Maybe (a,b)
-- g2 x y = case y of
--         Nothing -> x
--         z -> Just (x,y)

-- g3 :: a -> b -> (Either a b)
-- g3 x y = case x of
--           Left x -> x
--           Right y -> y






main :: IO ()
main = do
  putStrLn "hello world"
