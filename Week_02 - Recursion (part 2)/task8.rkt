#lang racket
(require math/number-theory)
#|
A number is perfect
if and only if it is natural and equal to the sum of its divisors,
excluding the number itself.
Define a predicate that checks whether a number is perfect.
Assume correct input.
|#

(define (sum-divs n)
  (define (helper d result)
    (cond
      [(> d n) result]
      [(divides? d n) (helper (add1 d) (+ result d))]
      [else (helper (add1 d) result)]
        ))
  (if (<= n 0)
      0
      (helper 1 0)
      )
  )

(define (perfect? n)
  (if (< n 1)
      (error "n has to be natural")
      ; (= n (- (sum-divs n) n))
      (= n (- (divisor-sum n) n))
      )
  )

(equal? (perfect? 6) #t); 1 + 2 + 3
(equal? (perfect? 33550336) #t)
(equal? (perfect? 495) #f)
(equal? (perfect? 1) #f)
