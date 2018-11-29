-- Exercise 1: Write a function that accepts an integer and returns a list  of its digits

digits :: Integer ->  [Integer]
digits n = reverse (digitsHelper n) where
    digitsHelper n
      | n < 10    = [n]
      | otherwise = (n `mod` 10) : digitsHelper (n `div` 10)

-- Exercise 2: Write a function that would return the max of any two comparable arguments

ourMax :: Ord a => a -> a -> a
ourMax a b
  | a <= b = b
  | otherwise = a

-- Exercise 3: Let's write a function that accepts two ordered lists and merges them.

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x <= y    = x:merge xs (y:ys)
    | otherwise = y:merge (x:xs) ys

-- Exercise 4: Mergesort is a safe answer to sorting algo questions. How does it work? Let's write it!

mergesort :: Ord a => [a] -> [a]
mergesort xs
    | len < 2   = xs
    | otherwise = merge (mergesort hs) (mergesort ts) where
        len = length xs
        (hs, ts) = splitAt (len `div` 2) xs
