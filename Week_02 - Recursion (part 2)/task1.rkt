#lang racket

#| Define predicates that check:
1. whether two numbers are not equal:
- in one line without using if-else;
- using guards.
2. whether a whole number x is between two whole numbers - start and end:
- in one line without using if-else;
- with a local helper procedure that uses boolean operators. |#

(define (not-equal-one-line? x y)
  42
  )

(define (not-equal-guards? x y)
  42
  )

(define (inside-one-line? start end x)
  42
  )

(define (inside-boolean-ops? start end x)
  42
  )

(equal? (not-equal-one-line? 5 2) #t)
(equal? (not-equal-one-line? 5 5) #f)

(equal? (not-equal-guards? 5 2) #t)
(equal? (not-equal-guards? 5 5) #f)

(equal? (inside-one-line? 1 5 4) #t) ; start = 1, end = 5, x = 4
(equal? (inside-one-line? 5 1 4) #t)
(equal? (inside-one-line? 10 50 200) #f)
(equal? (inside-one-line? 10 50 1) #f)

(equal? (inside-boolean-ops? 1 5 4) #t)
(equal? (inside-boolean-ops? 5 1 4) #t)
(equal? (inside-boolean-ops? 10 50 200) #f)
(equal? (inside-boolean-ops? 10 50 1) #f)
