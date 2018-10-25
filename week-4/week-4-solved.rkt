#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 1;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;Is there a problem with this function? (clue tail recursion)
;;PR the non-tailrec solution with reverse and remove this comment!
(define (prepend-list xs xy)
  (cond [(null? xy) xs]
        [else (cons (car xy) (prepend-list xs (cdr xy)))]))

;;(prepend-list '(c d) '(a b))
;;(prepend-list null '(a b))

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 2;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
(define (apply-to-list f xs)
  (cond [(null? xs) null]
        [else (cons (f (car xs)) (apply-to-list f (cdr xs)))]))

;;(apply-to-list (lambda (x) (+ 1 x)) (list 0 1))

(define increment-list (curry apply-to-list (lambda (x) (+ 1 x))))

;;(increment-list '(0 1 2 3))

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 3;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
(define (remove-dupes xs)
  (define (remove-dupes-helper acc rest)
    (cond [(null? rest) (reverse acc)]
          [(member (car rest) acc) (remove-dupes-helper acc (cdr rest))]
          [else (remove-dupes-helper (cons (car rest) acc) (cdr rest))]))
  (remove-dupes-helper null xs))

;;(remove-dupes '(1 2 3 4 5 5))

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
(define (longest-word s)
  (define (longer-list? xs ys)
    (cond [(> (length xs) (length ys)) xs]
          [else ys]))
  (define (break-char? c)
    (or (char-whitespace? c) (char-punctuation? c)))
  (define (longest-word-helper xs longest acc)
    (cond [(null? xs) (list->string (reverse (longer-list? longest acc)))]
          [(break-char? (car xs)) (longest-word-helper (cdr xs) (longer-list? longest acc) null)]
          [else (longest-word-helper (cdr xs) longest (cons (car xs) acc))]))
  (longest-word-helper (string->list s) null null))

;;(longest-word "What am I even doing man!")
