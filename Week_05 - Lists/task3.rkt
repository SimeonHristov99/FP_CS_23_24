#lang racket

; Define a procedure that checks whether an element is present in a list.

(define (elem-rec-with-mc? x xs)
  42
  )

(define (elem-rec-without-mc? x xs)
  42
  )

(define (elem-proc? x xs)
  42
  )

; using a manual check
(equal? (elem-rec-with-mc? 1 '(5 2 1)) #t)
(equal? (elem-rec-with-mc? "str" '()) #f)
(equal? (elem-rec-with-mc? "str" '("str" "len" "pair")) #t)

; without using a manual check
(equal? (elem-rec-without-mc? 1 '(5 2 1)) #t)
(equal? (elem-rec-without-mc? "str" '()) #f)
(equal? (elem-rec-without-mc? "str" '("str" "len" "pair")) #t)

; using a predefined procedure
(equal? (elem-proc? 1 '(5 2 1)) #t)
(equal? (elem-proc? "str" '()) #f)
(equal? (elem-proc? "str" '("str" "len" "pair")) #t)
