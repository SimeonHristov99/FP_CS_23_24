#lang racket

#|
Define the procedure that accepts
a whole number - n, and a real number (representing radians) - x,
and returns the nth partial sum of sin(x).
|#

(define (my-sin n x)
  42
  )

(= (my-sin 100 1.570796) 0.9999999999999465) ; 90 degrees => 0.9999999999999465
(= (my-sin 100 0.5235988) 0.5000000211324931) ; 30 degrees => 0.5000000211324931
