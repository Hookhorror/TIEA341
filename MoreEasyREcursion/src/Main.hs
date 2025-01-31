module Main where

  delete :: Int -> [Int] -> [Int]
  delete n [] = []
  delete n (x:xs)
      | n == x = xs
      | otherwise = x : delete n xs

  
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
