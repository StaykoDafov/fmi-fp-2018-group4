#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Welcome to WEEK 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; tl;dr - Last time + Homework + Week 5

;;;;;;;Lecture;;;;;;;
;; What is a cons? Let's do some examples of cons!
;; Accessings parts of a cons?

;; Lists. Lists are awesome.
;; What are they? Are they related to cons?
;; What functions can we use to manipulate lists?
;; Cons vs Append.
;; Operations we can do on lists.

;; Question time!

;;What does the following code do?
;;
;; (define (omg-wut-doooo .wut)
;;   wut)

;; (omg-wut-doooo 1)
;; (omg-wut-doooo 1 2 3)

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 1;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;Define a function that takes two lists as arguments and prepends the 2nd one to the first.
;; (prepend '(c d) (list a b)) => '(a b c d)

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 2;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Define a function that accepts two arguments - another function accepting a single argument and a list. The return value is
;; a new list constructed by the application of the passed fn to all list elements.
;; function to all elements
;; (prepend (lambda (x) (+ 1 x)) (list 0 1)) => '(1 2)


;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 3;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;Write a function that takes a list as an argument and removes all duplicate items.
;; Bonus: Is this tail recursion?
;; (remove-dupes '(1 3 2 3 3 "wut" 5 5)) => '(1 3 2 "wut" 5)


;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;So, what do we know about strings?
;; string->list, list->string, char-whitespace?, char-punctuation?
;;Let's write a function that extracts the longest word from a sentence. The argument and return value are both strings.
;; (longest-word "What am I even doing???") => "doing"


;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 5;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; We serve celebrities. We really want to know what the public thinks of them.
;; So, we created this service where people work the phones all day, call the celebrity
;; and record a simple positive/negative reaction from the person on the line to the celebrity's name.
;; In the end, we produce something like: - Justin Bieber 44% approval rating. Madonna - 66% approval rating.

;; How are we going to model this?
;; What are we going to do? (this exercise has no end, let's see how far we get)
;; Bonus: We didn't get to do this, the goal of this exercicse is to model the "Celebrity + polling information"
;; as a cons and to build a set of functions around it hiding the underlying datastructure and providing abstract access to polling
;; e.g. start-poll, register-opinion, current-approval-rating, people-phoned etc.
