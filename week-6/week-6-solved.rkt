#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Welcome to WEEK 6;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 1;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Let's write a function that we are going to call `mapcat`.
;; We would like to receive two arguments - an fn and a nested list.
;; We are going to execute the fn on all first level elements of the list
;; and then concat the results. You have 5 minutes
(define (mapcat fn xs)
  (apply append (map fn xs)))

(mapcat (lambda (xs)
          (map (lambda (x) (+ 1 x)) xs))
        '((1 2) (3))) => '(2 3 4)

(mapcat (lambda (xs)
          xs)
        '(("dog" "eat") ("dog")))


;; A canonical implementation of this function exists in most languages
;; and is called "flatmap" or "mapcat"

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 2;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Write a function that accepts two fn's f and g and
;; returns new fn - h, where h(x) is the maximum value between f(x) and g(x)
;; You have 5 mins.

(define (fmax f g)
  (λ (x) (max (f x) (g x))))

((fmax (lambda (x) x) (lambda (x) (- x 1))) 5) => 5


;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 3;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Write an fn that receives the edges of a graph in a (from . to) form
;; and returns a list of all nodes in the graph.
(define (nodes edges)
  (remove-duplicates (apply append (map car edges) (map cdr edges))))

(nodes '((a b) (b c)))

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Let's do exercise 2 from the prep sheet.

(define (num-bigger-elements xs)
  (define (count-larger-than x) (length (filter (curry < x) xs)))
  (map (λ(x) (cons x (count-larger-than x))) xs))

(num-bigger-elements '(5 6 3 4))
