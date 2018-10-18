#lang racket

;; I'm asking questions regarding the lecture.
;; Lecture comprehension - 5,6,5

;; What is a let form?
;; What about a let* form?
;; And the letrec?
;; What would I be using all the time?
;; Do we know what a define is and what the differences are to a let?
;; Ok, which one should one prefer?

;;Ok, so, what are lambdas?
;;Cool, but for now, we have no practical usage as we don't know enough.

;; Question time!

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 1;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Attention: Up to 15 mins.
;; Write an FN that checks if the digits of a numbe are in order.
;; Bonus: Can you write it with two mutually recursive functions?
;;(ordered? 137889) => #t
;;(ordered? 137798) => #f


;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 2;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; What is a predicate? => Fn returning a boolean value (#t/#f)
;; What do we order by in exercise 1? => > predicate
;; Let's write the same function, but ordering by a random predicate.
;; Attention: Up to 5 mins.


;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 3;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; So, what did we do?
;; Let's say we have done Exercise 2 before exercise 1, and now we need to solve 1?
;; How could we approach that?


;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;Attention: 15 min.
;;Last one with numbers and we move onto lists, but who didn't finish the predicate regarding prime numbers?
;;That's what we do.

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 5;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;Let's talk about lists now.
;; What is a list?
;; What is '(), null?
;; What can one put into a list?
;; What are the most common operations on a list? (car, cdr)
;; Let's write a function that takes a list and counts how many times an element is within it.
;; Can we reduce the branching?
