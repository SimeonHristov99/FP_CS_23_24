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

(define (narcissistic? n)
  42
  )

; show trace

(equal? (narcissistic? 7) #t)
(equal? (narcissistic? 12) #f)
(equal? (narcissistic? 370) #t)
(equal? (narcissistic? 371) #t)
(equal? (narcissistic? 1634) #t)
