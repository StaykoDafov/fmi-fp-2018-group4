#lang racket
/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Welcome to WEEK 6;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; tl;dr - Last time

;;;;;;;Lecture;;;;;;;
;; What are assq/assv?
;;(assq 'a '(a c))
;;(assq 'a '((b c) (b c)))
;;
;; Cool, what is assoc?
;;(assoc null '(("dog" "cat")))
;;(assoc null '(("dog" "cat")) (lambda (_ __) #t))
;; Answer: Everything is assoc.
;; TO DO AT HOME: Play with at least 15-20 different use cases
;; for assq/assv and associative lists, until you are sure you gasp the differences.
;; If there is a struggle - address it next week!


;; Trees & graphs. What are they, how do we represent them.


;;;;;QUESTION TIME;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 1;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Let's write a function that we are going to call `mapcat`.
;; We would like to receive two arguments - an fn and a nested list.
;; We are going to execute the fn on all first level elements of the list
;; and then concat the results. You have 5 minute
;;(mapcat (lambda (xs)
;;          (map (lambda (x) (+ 1 x)) xs))
;;        '((1 2) (3)))
;;(mapcat (lambda (xs)
;;          xs)
;;        '(("dog" "eat") ("dog")))

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 2;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Write a function that accepts two fn's f and g and
;; returns new fn - h, where h(x) is the maximum value between f(x) and g(x)
;; You have 5 mins.
;; Note: This took a long time. People seem to have understood fns as first class citizens
;; but there was a real struggle with returning a lambda, the scope it closes and the usage.
;; We're going to do a more detailed exercise next week.

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 3;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Write an fn that receives the edges of a graph in a (from . to) form
;; and returns a list of all nodes in the graph.
;; Bonus: If you are done, write an fn that takes a graph and returns the list of nodes adjacent to a particular queried node.
;;(nodes '((a b) (b c))) => '(a b c)

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; We're going to write an fn that receives a list of numbers(xs)
;; and returns a list of pairs where the first element is each
;; of the numbers in xs  and the second is the count
;; of elements greater than it found in xs.


;; We also learned about some interesting functions today:
;; (const 'v) => an fn always returning V. Useful to wrap a value in fn context when a fn is expected to carry on with the computation.
;; (andmap identity '(#t #t #f)) => Going around the (apply and map) problem. Keep this one in mind please!
;; (remove-duplicates) => dedups the elements in a list.
