#lang racket

; Define a procedure that returns the smallest element of a list.

(define (get-smallest-rec xs)
  42
  )

(define (get-smallest-proc xs)
  42
  )

(define (get-smallest-fold-proc xs)
  42
  )

(define (get-smallest-fold-no-proc xs)
  42
  )

; using a recursive procedure
(= (get-smallest-rec '(1 2 5)) 1)
(= (get-smallest-rec '(2 1 5)) 1)
(= (get-smallest-rec '(2 1 -1 5)) -1)

; with a predefined procedure
(= (get-smallest-proc '(1 2 5)) 1)
(= (get-smallest-proc '(2 1 5)) 1)
(= (get-smallest-proc '(2 1 -1 5)) -1)

; using a folding with a predefined procedure
(= (get-smallest-fold-proc '(1 2 5)) 1)
(= (get-smallest-fold-proc '(2 1 5)) 1)
(= (get-smallest-fold-proc '(2 1 -1 5)) -1)

; using a folding without a predefined procedure
(= (get-smallest-fold-no-proc '(1 2 5)) 1)
(= (get-smallest-fold-no-proc '(2 1 5)) 1)
(= (get-smallest-fold-no-proc '(2 1 -1 5)) -1)
