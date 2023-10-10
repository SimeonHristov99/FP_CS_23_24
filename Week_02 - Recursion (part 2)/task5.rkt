#lang racket

#|
Define a recursive
and an iterative procedure for calculating "x" to the power of "n".
|#

(define (pow-rec x n)
  (if (zero? n)
      1
      (* x (pow-rec x (sub1 n)))
      )
  )

(define (pow-iter x n)
  (define (helper result leftover-pow)
    (if (zero? leftover-pow)
        result
        (helper (* result x) (sub1 leftover-pow))
        )
    )
  (helper 1 n)
  )

(= (pow-rec 2 5) 32)
(= (pow-rec 15 3) 3375)

(= (pow-iter 2 5) 32)
(= (pow-iter 15 3) 3375)
