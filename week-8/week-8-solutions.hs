-------- Welcome to week 8! --------
--- We are starting with haskell ---
---     WHAT IS IT? ----------------

-- OMG, it's another functional language
-- Statically typed
-- Lazy evaluated
-- Partial application
-- Interfaces, Generics, Typeclasses
-- Pattern matching
-- Guards
-- List comprehension
-- Real world production language.

-- Exercise 1: Write a function accepting a integer and returning a list of all
-- numbers larger than it.

allAfter :: Integer -> [Integer]
allAfter n = n : allAfter (n+1)

-- Exercise 2: Write a function that sums 3 integers.

sumThree :: Integer -> Integer -> Integer -> Integer
sumThree x y z = x + y + z

-- Exercise 3: Guess what? Write factorial. In 3 different ways. k10xbye

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial(n - 1)


factorialGuard :: Integer -> Integer
factorialGuard n
  | n == 0 = 1
  | otherwise = n * factorialGuard(n - 1)

factorialIf :: Integer -> Integer
factorialIf n = if n <= 1
                then 1
                else n * (factorialIf (n - 1))

-- Exercise 4: Write a function that counts the digits in a number.

countDigits :: Integer -> Integer
countDigits n
  | n < 10 = 1
  | otherwise = 1 + countDigits(n `div` 10)

-- Exercise 5: https://en.wikipedia.org/wiki/Narcissistic_number
digits :: Integer -> [Integer]
digits n
    | n < 10    = [n]
    | otherwise = digits (n `div` 10) ++ [n `mod` 10] -- ++ => concat lists

isNarcissistic :: Integer -> Bool
isNarcissistic n = n == sum [d ^ l | d <- ds] where
    ds = digits n
    l  = length ds
