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

(define (generate-alphabet-checker alphabet)
  (define (in-alphabet? word)
    (andmap (lambda (ch)
              (not (equal? #t (member ch alphabet))))
            (string->list word)))
  (lambda (words)
    (andmap in-alphabet? words)))

;;(let ([all-in-alphabet? (generate-alphabet-checker '(#\c #\a #\t))])
;;   (all-in-alphabet? '("dog")) => #f



;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 2;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;Let's write a function that accepts two lists of words and
;;returns true only if all words in one list are also in the other

(define (all-the-same? xs ys)
  (andmap (lambda (x y)
            (and (not (equal? #f (member x ys)))
                 (list? (member y xs))))
          xs ys))

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 3;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;Same, but with recursion.

;;(all-the-same? '(1) '(2)) => #f
;;(all-the-same? '("cat" "dog") '("dog" "cat"))

(define (all-the-same? xs ys)
  (define (same-with-mem? rest-of-xs rest-of-ys)
    (cond [(and (null? rest-of-xs) (null? rest-of-ys)) #t]
          [(or (null? rest-of-xs) (null? rest-of-ys)) #f]
          [(not (list? (member (car rest-of-xs) ys))) #f]
          [(not (list? (member (car rest-of-ys) xs))) #f]
          [else (same-with-mem? (cdr rest-of-xs) (cdr rest-of-ys))]))
  (same-with-mem? xs ys))

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Them matrices. We seem to know what a matrice is, but how can we write a function  that verifies of a
;; list  of lists is a matrix?

(define (matrix? xss)
  (define (all? e xs)
    (andmap (curry equal? e) xs))
  (let ([rows-length (map length xss)])
    (all? (car rows-length) (cdr rows-length))))


;;(all-the-same? '("cat") '("dog")) => #f
;;(all-the-same? '("dog" "cat") '("cat" "dog")) => #t


;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 3;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;Same, but with recursion.
(define (all-the-same? xs ys)
  (define (same-with-mem? rest-of-xs rest-of-ys)
    (cond [(and (null? rest-of-xs) (null? rest-of-ys)) #t]
          [(or (null? rest-of-xs) (null? rest-of-ys)) #f]
          [(not (list? (member (car rest-of-xs) ys))) #f]
          [(not (list? (member (car rest-of-ys) xs))) #f]
          [else (same-with-mem? (cdr rest-of-xs) (cdr rest-of-ys))]))
  (same-with-mem? xs ys))

;;(all-the-same? '(1) '(2)) => #f
;;(all-the-same? '("cat" "dog") '("dog" "cat"))


;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;Exercise 4;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Them matrices. We seem to know what a matrice is, but how can we write a function  that verifies of a list  of lists is a matrix?
(define (matrix? xss)
  (define (all? e xs)
    (andmap (curry equal? e) xs))
  (let ([rows-length (map length xss)])
    (all? (car rows-length) (cdr rows-length))))

;;(matrix? '((1 2 3) (4 5 6)))
;;(matrix? '((1 2 3) (4 5) (6)))
