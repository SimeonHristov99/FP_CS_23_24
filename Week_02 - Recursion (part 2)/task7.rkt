#lang racket
(require math/number-theory)
#|
Define a procedure that returns
the sum of all the divisors of a number.
Assume correct input.
If the number is negative return 0.
|#

; (divisor-sum n)

(define (sum-divs n)
  (define (helper d result)
    (cond
      [(> d n) result]
      [(divides? d n) (helper (add1 d) (+ result d))]
      [else (helper (add1 d) result)]
        ))
  (if (<= n 0)
      0
      (helper 1 0)
      )
  )

(= (sum-divs 0) 0)
(= (sum-divs 1) 1)
(= (sum-divs 6) 12) ; 1 + 2 + 3 + 6
(= (sum-divs -6) 0)
(= (sum-divs 12345) 19776)
