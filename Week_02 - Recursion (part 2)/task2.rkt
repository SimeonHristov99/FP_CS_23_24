#lang racket

#|
Define two procedures that return whether a number is even:
- using if-else;
- using guards.
|#

(define (even-if? n)
  (if (zero? (remainder n 2)) "Yes" "No")
  )

(define (even-guards? n)
  (cond
    [(zero? (remainder n 2)) "Yes"]
    [else "No"]
    )
  )

(equal? (even-if? 2) "Yes")
(equal? (even-if? 15452) "Yes")
(equal? (even-if? 321) "No")

(equal? (even-guards? 2) "Yes")
(equal? (even-guards? 15452) "Yes")
(equal? (even-guards? 321) "No")
