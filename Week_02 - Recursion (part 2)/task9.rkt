#lang racket

#|
Define a predicate (inc-digits? n) that checks whether
the digits of the non-negative n are ordered in an ascending order.
|#

(define (inc-digits? n)
  42
  )

(equal? (inc-digits? 1244) #t)
(equal? (inc-digits? 12443) #f)
