#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Welcome to WEEK 7;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; tl;dr - Last time
;;
;;;;;;;Lecture;;;;;;;
;; No clue, what did you guys talk about?
;;

;;;;;QUESTION TIME;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 1;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Write a function "generate-alphabet-checker" that receives
;; a list of characters and returns another function, accepting a list
;; of words and returning true/false if all of the words contain letters
;; from within the alphabet.


;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 2;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;Let's write a function that accepts two lists of words and
;;returns true only if all words in one list are also in the other

;;(all-the-same? '("cat") '("dog")) => #f
;;(all-the-same? '("dog" "cat") '("cat" "dog")) => #t

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 3;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;Same, but with recursion.

;;(all-the-same? '(1) '(2)) => #f
;;(all-the-same? '("cat" "dog") '("dog" "cat"))

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Them matrices. We seem to know what a matrice is, but how can we write a function  that verifies of a
;; list  of lists is a matrix?

;;(matrix? '((1 2 3) (4 5 6)))
;;(matrix? '((1 2 3) (4 5) (6)))
