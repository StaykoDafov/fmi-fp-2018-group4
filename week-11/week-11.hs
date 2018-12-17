-- Haskell!
-- Our friends, map and filter make another surprising appearance.
-- What is foldr?
-- What are higher order functions?
-- Partial application?
-- What are "$" and "." ?
-- We spend the first part of the exercises writing Prelude fn's with foldr/foldr1
-- -- sum, minimum, concat, so we didn't get to ex4.

-- Exercise 1: Write a function that receives a list of words xs and a minimum number of vowels n and returns only the words with at least n vowels.

-- atLeastVowel ["cat" "dog" "doggo" "kitten" "rat"] 2 => ["doggo" "kitten"]



-- Exercise 2: Write a method accepting a list of 1 argument functions and returns another fn for their composed execution.


-- compose [(\x -> x + 1), (\x -> x + 1)] $ 5 =>> 7



-- Exercise 3: Every positive even number greater than 2 is the sum of two primes. Mind. Blown!

-- Get a number, return the list of the two. Map and filter, plz.
