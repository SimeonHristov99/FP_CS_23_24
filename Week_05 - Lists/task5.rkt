#lang racket

; Define a procedure that removes
; the first match of an element by going from left to right.

(define (remove-first-proc x xs)
  (remove x xs)
  )

(define (remove-first-no-proc x xs)
  (cond
    [(null? xs) xs]
    [(equal? x (car xs)) (cdr xs)]
    [else (cons (car xs) (remove-first-no-proc x (cdr xs)))]
    )
  )

;1 '(2 5 1 6)
;1 '(5 1 6)
;1 '(1 6)
;'(6)


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
