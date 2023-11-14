#lang racket

; Define a procedure (replace xs dict) that replaces any of the data
; in the list "xs" that has corresponding values in the dictionary "dict".

; Define a higher order procedure repeater str
; that accepts a string and
; returns a linearly recursive procedure of
; two arguments - count (number) and glue (string).
; The result from a call to the result of repeater
; should be a string that is str repeated count
; times with glue being put between every two str instances.

(define (repeater str)
  (λ (count glue)
    (if (< count 2)
        str
        (string-append str glue ((repeater str) (sub1 count) glue))
     )
    )
  )

(define (replace xs dict)
  (map (λ (x)
         (let
             ([assoc-res (assoc x dict)])
           (if assoc-res
               (cdr assoc-res)
               x
               )
             )
         ) xs)
  )

(equal? ((repeater "I love Racket") 3 " ") "I love Racket I love Racket I love Racket")
(equal? ((repeater "Quack") 5 "!") "Quack!Quack!Quack!Quack!Quack")

(equal? (replace '(1 2 3 4) '((1 . 11) (2 . 22))) '(11 22 3 4))
