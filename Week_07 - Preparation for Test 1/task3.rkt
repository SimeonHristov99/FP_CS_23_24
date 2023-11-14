#lang racket

; Define a procedure that accepts a list of pairs
; and an unary function f
; and returns whether all points are part of the graph of the function.

(define (graph-contains-points ps f)
  (andmap (λ (pair) (equal? (f (car pair)) (cdr pair))) ps)
  )

(equal? (graph-contains-points '((1 . 2) (2 . 3) (3 . 4)) add1) #t)
(equal? (graph-contains-points '((1 . 2) (2 . 4) (3 . 4)) add1) #f)
(equal? (graph-contains-points '((1 . "11") (2 . "21") (3 . "31")) (λ (x) (string-append (number->string x) "1"))) #t)
