#lang racket

#|
A number is prime if and only if it is natural, greater than 1 and its only divisors are 1 and itself.
Define a predicate that checks whether a number is prime.
|#

(define (num-prime? n)
  42
  )

(equal? (num-prime? 1) #f)
(equal? (num-prime? 2) #t)
(equal? (num-prime? 3) #t)
(equal? (num-prime? 6) #f)
(equal? (num-prime? 42) #f)
(equal? (num-prime? 61) #t)
