#lang racket

#|
Define the procedure that accepts
a whole number - n, and a real number (representing radians) - x,
and returns the nth partial sum of sin(x).
|#

(require math/number-theory)

(define (my-sin n x)
  (if (zero? n)
      x
      (+
       (/
       (* (expt -1 n) (expt x (add1 (* 2 n))))
       (factorial (add1 (* 2 n)))
       )
       (my-sin (sub1 n) x)
       )
      )
  )

(= (my-sin 100 1.570796) 0.9999999999999465) ; 90 degrees => 0.9999999999999465
(= (my-sin 100 0.5235988) 0.5000000211324931) ; 30 degrees => 0.5000000211324931
