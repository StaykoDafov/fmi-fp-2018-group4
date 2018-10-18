#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 1;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
(define (ordered? n)
  (define (current-ordered? current n)
    (and (> current (remainder n 10)) (ordered? n)))
  (cond
   [(< n 10) #t]
   [else (current-ordered? (remainder n 10) (quotient n 10))]))

;;(ordered? 156)
;;(ordered? 153)

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 2;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
(define (ordered-by? pred n)
  (define (current-ordered? current n)
    (and (pred current (remainder n 10)) (ordered? n)))
  (cond
   [(< n 10) #t]
   [else (current-ordered? (remainder n 10) (quotient n 10))]))

;;(ordered-by? > 156)
;;(ordered-by? > 153)

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 3;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
(define (ordered-naive? n)
  (ordered-by? > n))

;;Currying & partial application
(define ordered-partial? (curry ordered-by? >))

;;(ordered-partial? 156)
;;(ordered-partial? 153)

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;Naive
(define (divisible? n m)
  (= 0 (modulo n m)))

;;(divisible? 6 2)
;;(divisible? 5 2)

(define (prime-naive? n)
  (define (prime-helper-naive? i)
    (cond [(= i n)             #t]
          [(divisible? n i)    #f]
          [else (prime-helper-naive? (+ i 1))]))
  (cond [(< n 2) #f]
        [else (prime-helper-naive? 2)]))

;;(prime-naive? 7)
;;(prime-naive? 36)

(define (prime? n)
  (define (prime-helper? i)
    (cond [(> i (floor (sqrt n)))    #t]
          [(divisible? n i)    #f]
          [else (prime-helper? (+ i 1))]))
  (and (> n 1) (prime-helper? 2)))

;;(prime? 7)
;;(prime? 36)

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 5;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;With let* for an almost sensible usage(readability)
(define (count-occurences xs n)
  (cond
   [(null? xs) 0]
   [else (let* ([current-element (car xs)]
                [increment-by (or (and (= current-element n) 1) 0)])
           (+ increment-by (count-occurences (cdr xs) n)))]))
