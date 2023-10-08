#lang racket

#|
A number is perfect if and only if it is natural and equal to the sum of its divisors,
excluding the number itself.
Define a predicate that checks whether a number is perfect.
Assume correct input.
|#

(define (perfect? n)
  42
  )

(equal? (perfect? 6) #t)
(equal? (perfect? 33550336) #t)
(equal? (perfect? 495) #f)
(equal? (perfect? 1) #f)
