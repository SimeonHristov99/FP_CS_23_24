#lang racket

#|
Define an iterative procedure that accepts two numbers x and n
and calculates the following sum: 1 + x + x^2 + x^3 + ... + x^n.
|#

(define (calculate-sum x n)
  (define (helper result power)
    (if (zero? power)
        result
        (helper (+ result (expt x power)) (sub1 power))
        )
    )
  (helper 1 n)
  )

(= (calculate-sum 5 0) 1)
(= (calculate-sum 5 1) 6)
(= (calculate-sum 10 1) 11)
(= (calculate-sum 1 11) 12)
(= (calculate-sum 2 11) 4095)
