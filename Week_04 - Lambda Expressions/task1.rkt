#lang racket

; Define a higher order procedure that:
; - is called `my-identity` and simulates the `identity` procedure;
; - accepts a procedure and returns a lambda that accepts an argument and applies that procedure to it;
; - accepts a predicate and returns a lambda that accepts an argument and applies the negated predicate to it;
; - accepts two procedures and returns their composition over an argument of a lambda procedure;
; - returns a procedure that is the partial application of f over x.

(define (my-partially-apply f)
  (λ (x y) ((curry f) x y))
  )

(define (my-compose f g)
  (λ (x) (f (g x)))
  )

(define (g p?)
  (λ (x) (not (p? x)))
  )

(define (f proc)
  (λ (x) (proc x))
  )

((my-partially-apply remainder) 123 10)

#|
(define (my-identity)
  (λ (x) x)
  )

((my-compose add1 sub1) 5)

((g even?) 5)

; write 2 tests for subtask 1
((my-identity) 5)
((λ (x) x) 5)

((f add1) 5)
|#