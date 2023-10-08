#lang racket

#|
Define two procedures that return whether a number is even:
- using if-else;
- using guards.
|#

(define (even-if? n)
  42
  )

(define (even-guards? n)
  42
  )

(equal? (even-if? 2) "Yes")
(equal? (even-if? 15452) "Yes")
(equal? (even-if? 321) "No")

(equal? (even-guards? 2) "Yes")
(equal? (even-guards? 15452) "Yes")
(equal? (even-guards? 321) "No")
