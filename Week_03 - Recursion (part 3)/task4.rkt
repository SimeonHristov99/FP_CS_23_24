#lang racket

#|
Define a recursive procedure (sum-numbers start finish) that
returns the sum of all numbers from the interval [start, finish]
whose digits are ordered in decreasing order.
|#

(define (sum-numbers start finish)
  42
  )

(= (sum-numbers 1 9) 45)
(= (sum-numbers 199 203) 200)
(= (sum-numbers 219 225) 663)
(= (sum-numbers 225 219) 663)
