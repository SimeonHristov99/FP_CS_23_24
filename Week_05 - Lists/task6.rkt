#lang racket

; Define procedures that in linear time transform
; a number into a list of its digits and vice versa.

(require racket/trace)

(define (num-to-xs n)
  (define (helper result leftover)
    (if (< leftover 10)
        (cons leftover result)
        (helper (cons (remainder leftover 10) result) (quotient leftover 10))
        )
    )
  ; (trace helper)
  (helper null n)
  )


(define (xs-to-num xs)
  (define (helper result leftover)
    (if (null? leftover)
        result
        (helper (+ (* result 10) (car leftover)) (cdr leftover))
     )
    )
  (helper 0 xs)
  )

;(num-to-xs 123)
(equal? (num-to-xs 123) '(1 2 3))
(equal? (num-to-xs 123456789) '(1 2 3 4 5 6 7 8 9))

(= (xs-to-num '(1 2 3)) 123)
(= (xs-to-num '(1 2 3 4 5 6 7 8 9)) 123456789)
