#lang racket

; Define a higher order procedure repeater str
; that accepts a string and returns
; a linearly recursive procedure of
; two arguments - count (number) and glue (string).
; The result from a call to the result of repeater
; should be a string that is str repeated count times
; with glue being put between every two str instances.

(define (repeater str)
  (λ (count glue)
    (if (= count 1)
        str
        (string-append str glue ((repeater str) (sub1 count) glue))
     )
    )
  )

(define (repeater2 str)
  (λ (count glue)
    (cond
      [(zero? count) ""]
      [(= count 1) str]
      [else (string-append str glue ((repeater2 str) (sub1 count) glue))]
     )
    )
  )

((repeater "I love Racket") 3 " ")

(equal? ((repeater2 "I love Racket") 3 " ") "I love Racket I love Racket I love Racket")
(equal? ((repeater2 "Quack") 5 "!") "Quack!Quack!Quack!Quack!Quack")
