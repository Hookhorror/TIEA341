module Main where

  -- delete :: Int -> [Int] -> [Int]
  -- delete x [] = []
  -- -- delete 0 [x] = [x]
  -- -- delete 1 (x:xs) = xs
  -- delete y (x:xs) = if (y == x) then xs else delete y (x:xs)
  
  takeEvens :: [Int] -> [Int]
  takeEvens [] = []
  takeEvens (x:xs) = if ((even x) == True) then (x:(takeEvens xs)) else takeEvens xs

  (+++) :: [x] -> [x] -> [x]
  [] +++ [] = []
  [] +++ xs = xs
  (x:xs) +++ ys = x : (xs +++ ys)
  
  myConcat :: [[a]] -> [a]
  myConcat [] = []
  myConcat xs = case xs of
    [[]] -> []    
    [b] -> b
    (x:ys) -> x ++ (myConcat ys)
  
  main :: IO ()
  main = do
    putStrLn "hello world"
