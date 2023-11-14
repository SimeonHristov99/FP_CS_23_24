#lang racket

; Define a procedure that takes a matrix xss
; and returns a modified version of it - "modified-xss",
; in which if a row in xss has a zero then the whole row
; in "modified-xss" contains only zeros.

(define (zero-rows xss)
  (map (λ (xs) (if (member 0 xs)
                   ;(map (λ (x) 0) xs)
                   (map (curry * 0) xs)
                   ;(map (λ (x) (* 0 x)) xs)
                   xs
                   )
         )
       xss)
  )

(equal? (zero-rows '((1 2 0) (3 4 1) (0 5 7) (4 2 4))) '((0 0 0) (3 4 1) (0 0 0) (4 2 4)))
(equal? (zero-rows '((2 1 2 4) (0 2 0 1) (4 4 1 4) (4 1 3 1))) '((2 1 2 4) (0 0 0 0) (4 4 1 4) (4 1 3 1)))
