#lang racket

; Define a procedure "switch-sum f g n" ("f", "g" - procedures, "n" - number)
; that returns an unary procedure that for every "x" returns
; this sum: f(x) + g(f(x)) + f(g(f(x))) +  ... (containing n elements).



(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 1) 2) 3)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 2) 2) 9)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 3) 2) 16)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 4) 2) 30)
