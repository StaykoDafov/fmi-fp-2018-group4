-- Exercise 1: Write an implementation of drop.

drop' 0 xs = xs
drop' _ [] = []
drop' n (x:xs) = drop' (n-1) xs


-- Exercise 2: Write a function accepting a list of Integers and returning a tuple of two integer lists - odd and even.

splitPlz :: (Integral a) => [a] -> ([a], [a])
splitPlz xs = ([x | x <- xs, x `mod` 2 == 1], [x | x <- xs, x `mod` 2 == 0])

-- Exercise 3: Let's write an fn that returns the number of occurrences that the smallest number in a list is encoutnered in it.
occurencesMin :: [Integer] -> Int
occurencesMin xs = length [x | x <- xs, x == minX] where
    minX = minimum xs


-- Exercise 4: Let's write a function that checks if a string starts with another,

--isPrefix "cat" "dog" => False
--isPrefix "ca" "cat" => True
isPrefix :: String -> String -> Bool
isPrefix [] ys = True
isPrefix (x:xs) [] = False
isPrefix (x:xs) (y:ys) = (x == y) && isPrefix xs ys


-- Exercise 5: Can we really fast generalize it to if a string is contained in another?

strContains :: String -> String -> Bool
strContains (x:xs) [] = False
strContains xs ys
  | isPrefix xs ys = True
  | strContains xs (tail ys) = True
  | otherwise = False
