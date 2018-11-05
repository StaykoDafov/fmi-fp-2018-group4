#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Welcome to WEEK 5;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; tl;dr - Last time + Homework Horror Story

;;;;;;;Lecture;;;;;;;
;; So, what is `map`? How does it work? What definition did you get in the lecture?
;;
;;What does the following code do:
;;(map (lambda (x) (+ x 1)) '(1 2 3))
;;(map + '(1 2 3))
;;(map + '(1 2 3) '(3 2 1))

;; What is `apply`? What problem does it solve?
;; What does the following code do?
;;(apply (lambda (x) (+ x 1)) '(1 2 3))
;;(apply + '(1 2 3) '(1 2 3))
;;(apply + '(1 2 3) '(3 2 1))

;; What is `filter`? Why is it necessary?
;; What does the following code do
;;(filter odd? '(1 2 3))
;;(filter prime? '(1 2 3 4))
;;(filter ???? '(#t #t #f)) => #(t #t)

;;;;;QUESTION TIME;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 1;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Write a function that sums all odd numbers in a sequence.
;; You have 180 seconds.

;;(sum-odd '(1 2 3)) => 4
;;(sum-odd '(1 2 3 5 7)) => 16

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 2;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Define an FN returning the dot product of two vectors.
;; 180 more seconds, plz.

;;(dot-product '(1 2) '(1 2)) => 5
;;(dot-product '(1 2 3) '(4 -4 2)) => 2

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 3;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Write a function that accepts a count and single parameter and
;; returns a list containing the parameter count times. Use map.
;;(list-of-x 5 4) => '(5 5 5 5)
;;(list-of-x "dog" 3) => '("dog" "dog" "dog")

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Write a function that accepts a list of words, sums up the ascii values of the characters
;; in the words and returns the highest sum.
;; (highest-value-word '("cat" "DOG")) => 312 (cat, of course)
;; (highest-value-word '("cat" "DOG" "leprechaun")) => 1063, nothing beats

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 5;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Let's say we have a square matrix xss presented as a list of lists
;; e.g. ((1 2)    =>   ((1 3)
;;       (3 4))         (2 4))
;; Create an fn "transpose" tthat receives a single matrix and returns it's transposed matrix.
