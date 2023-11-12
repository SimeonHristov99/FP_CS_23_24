#lang racket

; Define a higher order procedure that accepts a list - xs,
; and returns an unary procedure that takes a predicate - p?,
; and checks whether xs is sorted according to p?.

(define (ordered xs)
  42
  )

(define (ordered-no-expl-booleans xs)
  42
  )

; with freedom to solve however you like it
(equal? ((ordered '(1 2 3 5)) (λ (x y) (< x y))) #t)
(equal? ((ordered '(1 8 29 92)) (λ (x y) (= y (+ (* x 3) 5)))) #t)
(equal? ((ordered '(1 8 3 14)) (λ (x y) (= y (+ (* x 3) 5)))) #f)
;((ordered '(1 8 3 14)) (λ (x y) (= y (+ (* x 3) 5))))

; using a linearly recursive process without returning explicitly #t and/or #f
(equal? ((ordered-no-expl-booleans '(1 2 3 5)) (λ (x y) (< x y))) #t)
(equal? ((ordered-no-expl-booleans '(1 8 29 92)) (λ (x y) (= y (+ (* x 3) 5)))) #t)
(equal? ((ordered-no-expl-booleans '(1 8 3 14)) (λ (x y) (= y (+ (* x 3) 5)))) #f)
