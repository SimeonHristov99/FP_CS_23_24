#lang racket

#|
Define a procedure that returns the sum of all the divisors of a number.
Assume correct input.
If the number is negative return 0.
|#

(define (sum-divs n)
  42
  )

(= (sum-divs 0) 0)
(= (sum-divs 1) 1)
(= (sum-divs 6) 12) ; 1 + 2 + 3 + 6
(= (sum-divs -6) 0)
(= (sum-divs 12345) 19776)
