#lang racket

; Demonstrate the difference between
; "applicative" and "normal" order evaluation.

(define (f x y)
  x
  )

(define (g x)
  (g x)
  )

(f 42 (g 10))
