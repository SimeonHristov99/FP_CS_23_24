#lang racket

; Define procedures that in linear time transform a number into a list of its digits and vice versa.

(define (num-to-xs n)
  42
  )

(define (xs-to-num xs)
  42
  )

(equal? (num-to-xs 123) '(1 2 3))
(equal? (num-to-xs 123456789) '(1 2 3 4 5 6 7 8 9))

(= (xs-to-num '(1 2 3)) 123)
(= (xs-to-num '(1 2 3 4 5 6 7 8 9)) 123456789)
