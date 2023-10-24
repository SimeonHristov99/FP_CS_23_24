#lang racket

; Define a higher order procedure that accepts
; an unary procedure - f,
; and returns a lambda of two real numbers - x, y,
; that subtracts f(x) from f(y).

(define (difference f)
  (λ (x y) (- (f y) (f x)))
  )

; explain closure

(= ((difference (λ (x) (* 2 x))) 15.16 15.20) 0.0799999999999983)
(= ((difference (λ (x) (* 2 x))) 8.5 8) -1)
