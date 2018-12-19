-- Haskell!
-- Our friends, map and filter make another surprising appearance.
-- What is foldr?
-- What are higher order functions?
-- Partial application?


-- Exercise 1: Write a function that receives a list of words xs and a minimum number of vowels n and returns only the words with at least n vowels.

-- atLeastVowel ["cat" "dog" "doggo" "kitten" "rat"] 2 => ["doggo" "kitten"]

isVowel :: Char -> Bool
isVowel c = elem c "aeiouy"

countVowels :: String -> Int
countVowels s = length $ (filter isVowel s)

atLeastVowel :: [String] -> Int -> [String]
atLeastVowel xs n = filter (\word -> countVowels word >= n) xs


-- Exercise 2: Write a method accepting a list of 1 argument functions and returns another fn for their composed execution.

compose fs x = foldr ($) x fs


-- Exercise 3: Every positive even number greater than 2 is the sum of two primes. Mind. Blown!

-- Get a number, return the list of the two. Map and filter, plz.

mindBlown n = head $ filter (\(x,y) -> isPrime x && isPrime y) $
              map (\e -> (e, n - e)) [1,3..n `div` 2]
  where isFactor a b = a `mod` b == 0
        isPrime n = null $ (filter (isFactor n) [2..n-1])
