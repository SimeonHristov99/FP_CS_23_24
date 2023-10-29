#lang racket

; Define a procedure that removes the first match of an element by going from left to right.

(define (remove-first-proc x xs)
  42
  )

(define (remove-first-no-proc x xs)
  42
  )

; using a predefined procedure
(equal? (remove-first-proc 1 '(1 1 1 2)) '(1 1 2))
(equal? (remove-first-proc 1 '(2 5 6)) '(2 5 6))
(equal? (remove-first-proc 1 '(1)) '())
(equal? (remove-first-proc 1 '(2 1)) '(2))
(equal? (remove-first-proc "RNN" '("CNN" "RNN" "GAN" "RNN")) '("CNN" "GAN" "RNN"))

; without using a predefined procedure
(equal? (remove-first-no-proc 1 '(1 1 1 2)) '(1 1 2))
(equal? (remove-first-no-proc 1 '(2 5 6)) '(2 5 6))
(equal? (remove-first-no-proc 1 '(1)) '())
(equal? (remove-first-no-proc 1 '(2 1)) '(2))
(equal? (remove-first-no-proc "RNN" '("CNN" "RNN" "GAN" "RNN")) '("CNN" "GAN" "RNN"))
