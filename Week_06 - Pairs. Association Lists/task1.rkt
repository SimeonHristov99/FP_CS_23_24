#lang racket

; Define a procedure that returns
; the value of a given key from an associative list.

(define (assoc-rec key xs)
  (cond
    [(null? xs) #f]
    [(equal? key (caar xs)) (cdar xs)]
    [else (assoc-rec key (cdr xs))]
    )
  )

(define (assoc-hop key xs)
  (let
      ([filtered-res (filter (λ (pair) (equal? (car pair) key)) xs)])
    (if (null? filtered-res)
        #f
        (cdar filtered-res)
        )
      )
  )

(define (assoc-builtin key xs)
  (let
      ([assoc-res (assoc key xs)])
    (if (pair? assoc-res)
        (cdr assoc-res)
        #f
        )
      )
  )

; using a recursive process
(equal? (assoc-rec 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")

; using a higher order procedure
(equal? (assoc-hop 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")
(equal? (assoc-hop 42 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) #f)

; using a built-in procedure
(equal? (assoc-builtin 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")
(equal? (assoc-builtin 42 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) #f)
