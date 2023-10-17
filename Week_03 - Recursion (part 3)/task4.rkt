#lang racket

#|
Define a recursive procedure (sum-numbers start finish) that
returns the sum of all numbers from the interval [start, finish]
whose digits are ordered in decreasing order.
|#

(define (decreasing? n)
  (or (< n 10)
      (and
       (<= (remainder n 10) (remainder (quotient n 10) 10))
       (decreasing? (quotient n 10))
       )
      )
  )

(define (sum-numbers start finish)
  (define (helper true-start true-finish)
    (cond
      [(> true-start true-finish) 0]
      [(decreasing? true-start) (+ true-start (helper (add1 true-start) true-finish))]
      [else (helper (add1 true-start) true-finish)]
      )
    )
  ;(if (> start finish) (helper finish start) (helper start finish))
  (helper (min start finish) (max start finish))
  )

;(decreasing? 200)
;(decreasing? 201)

(= (sum-numbers 1 9) 45)
(= (sum-numbers 199 203) 200)
(= (sum-numbers 219 225) 663)
(= (sum-numbers 225 219) 663)
