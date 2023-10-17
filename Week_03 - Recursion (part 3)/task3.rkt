#lang racket

#|
Define a procedure that finds the maximum digit in a number.
|#

(require racket/trace)

(define (find-max n)
  (define (helper leftover curr-max)
    (if (zero? leftover)
      curr-max
      (helper (quotient leftover 10) (max curr-max (remainder leftover 10)))
      )
    )
  (trace helper)
  (helper (quotient n 10) (remainder n 10))
  )

(= (find-max 55345) 5)
(= (find-max 14752) 7)
(= (find-max 329450) 9)
(= (find-max 9521) 9)
