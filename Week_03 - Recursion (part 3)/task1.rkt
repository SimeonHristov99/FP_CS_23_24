#lang racket

#|
A narcissistic number is a number which is the sum of its own digits,
each raised to the power of the number of digits in a given base.
Define a predicate that checks whether a given number is a narcissistic number.
Implementation detail: Use only linearly-recursive procedures.
For example, take 153 (3 digits):
1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
and 1634 (4 digits):
1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634
|#

(require racket/trace)

(define (num-digits n)
  (if (< n 10)
      1
      (add1 (num-digits (quotient n 10)))
      )
  )
;(trace num-digits)

(define (narcissistic? n)
  (define (narcissistic-sum leftover power)
    (if (zero? leftover)
        0
        (+
         (expt (remainder leftover 10) power)
         (narcissistic-sum (quotient leftover 10) power)
         )
        )
    )
  ;(trace narcissistic-sum)
  (= n (narcissistic-sum n (num-digits n)))
  )

; show trace

;(num-digits 123)

(equal? (narcissistic? 7) #t)
(equal? (narcissistic? 12) #f)
(equal? (narcissistic? 370) #t)
(equal? (narcissistic? 371) #t)
(equal? (narcissistic? 1634) #t)

#|
(if (< leftover 10)
        (expt leftover power)
        (+
         (expt (remainder leftover 10) power)
         (narcissistic-sum (quotient leftover 10) power)
         )
        )
|#