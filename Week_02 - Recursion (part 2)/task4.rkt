#lang racket

#|
Define a linearly recursive procedure
for calculating the sum of the digits of a positive number.
Assume correct input.
|#

(define (sum-digits-rec n)
  (if (zero? n) 0
  ;(if (< n 10) n
      (+ (sum-digits-rec (quotient n 10))  (remainder n 10))
      )
  )

(sum-digits-rec -123)
(= (sum-digits-rec 123) 6)
(= (sum-digits-rec 12345) 15)
