#lang racket

#|
Define a predicate (inc-digits? n) that checks whether
the digits of the non-negative n are ordered in an ascending order.
|#

(define (inc-digits? n)
  (if (< n 10)
      #t
      (and
       (>= (remainder n 10) (remainder (quotient n 10) 10))
       (inc-digits? (quotient n 10))
       )
      )
  )

(define (inc-digits-no-if? n)
  (or
   (< n 10)
   (and
       (>= (remainder n 10) (remainder (quotient n 10) 10))
       (inc-digits-no-if? (quotient n 10))
       )
   )
  )

(equal? (inc-digits-no-if? 1244) #t)
(equal? (inc-digits-no-if? 12443) #f)

(equal? (inc-digits? 1244) #t)
(equal? (inc-digits? 12443) #f)
