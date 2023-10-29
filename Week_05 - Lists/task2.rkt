#lang racket

; Define a procedure that returns the length of a list.

(define (my-length-iter xs)
  42
  )

(define (my-length-rec xs)
  42
  )

(define (my-length-proc xs)
  42
  )

; using an iterative procedure
(= (my-length-iter '()) 0)
(= (my-length-iter '(1 2 5 6 4 8)) 6)

; using a recursive procedure
(= (my-length-rec '()) 0)
(= (my-length-rec '(1 2 5 6 4 8)) 6)

; using a predefined procedure
(= (my-length-proc '()) 0)
(= (my-length-proc '(1 2 5 6 4 8)) 6)