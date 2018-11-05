#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 1;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Write a function that sums all odd numbers in a sequence.
;; You have 180 seconds.

(define (sum-odd xs)
  (apply + (filter odd? xs)))

;;(sum-odd '(1 2 3))
;;(sum-odd '(1 2 3 5 7))

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 2;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Define an FN returning the dot product of two vectors.
;; 180 more seconds, plz.
(define (dot-product xs xy)
  (apply + (map * xs xy)))

;;(dot-product '(1 2) '(1 2)) => 5
;;(dot-product '(1 2 3) '(4 -4 2)) => 2

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 3;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Write a function that accepts a count and single parameter and
;; returns a list containing the parameter count times. Use map.
(define (list-of-x x n)
  (map (lambda (_) x) (range 0 n)))

(list-of-x 5 4) => '(5 5 5 5)
(list-of-x "dog" 3) => '("dog" "dog" "dog")

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Write a function that accepts a list of words, sums up the ascii values of the characters
;; in the words and returns the highest sum.
(define (highest-value-word xs)
  (apply max (map (lambda (word)
                    (apply + (map char->integer (string->list word)))) xs)))

;; (highest-value-word '("cat" "DOG")) => 312 (cat, of course)
;; (highest-value-word '("cat" "DOG" "leprechaun")) => 1063, nothing beats

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 5;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
(define (transpose xss)
  (apply (curry map list) xss))

;; What other solutions are out there? PR!
