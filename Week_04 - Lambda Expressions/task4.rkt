#lang racket

; Define a procedure "switch-sum f g n" ("f", "g" - procedures, "n" - number)
; that returns an unary procedure that for every "x" returns
; this sum: f(x) + g(f(x)) + f(g(f(x))) +  ... (containing n elements).

(define (switch-sum f g n)
  (λ (x) (if (zero? n)
             0
             (+ (f x) ((switch-sum g f (sub1 n)) (f x)))
             ))
  )

#|
f=add1
g=(λ (x) (* x 2))
n=2
x=2

+ 3 (ss f=(λ (x) (* x 2)) g=add1 n=1) 2
+ 3 + 4 (ss f=add1 g=(λ (x) (* x 2)) n=0) 2
+ 3 + 4 + 0
7
|#

(= ((switch-sum add1 (λ (x) (* x 2)) 1) 2) 3)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 2) 2) 9)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 3) 2) 16)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 4) 2) 30)
