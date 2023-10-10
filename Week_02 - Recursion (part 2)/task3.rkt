#lang racket

#|
A number is a palindrome if and only if it is the same
number from right to left as well as from left to right.
Define a predicate that checks whether a non-negative number is a palindrome.
|#

(define (rev x)
  (define (helper result leftover)
    (if (zero? leftover)
        result
        (helper (+ (* result 10) (remainder leftover 10)) (quotient leftover 10))
        )
    )

  (helper 0 x)
  )

(define (palindrome? n)
  (if (negative? n)
      (error "N has to be non negative")
      (= n (rev n))
      )
  )

(equal? (palindrome? 1) #t)
(equal? (palindrome? 6) #t)
(equal? (palindrome? 1010) #f)
(equal? (palindrome? 505) #t)
(equal? (palindrome? 123321) #t)
(equal? (palindrome? 654) #f)
(equal? (palindrome? 121) #t)
(equal? (palindrome? 12) #f)
(equal? (palindrome? 120) #f)
(equal? (palindrome? 12321) #t)
(equal? (palindrome? 1221) #t)
