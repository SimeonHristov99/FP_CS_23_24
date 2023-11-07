#lang racket

; Define a procedure (replace xs dict) that replaces any of the data
; in the list "xs" that has corresponding values in the dictionary "dict".

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

(equal? (replace '(1 2 3 4) '((1 . 11) (2 . 22))) '(11 22 3 4))
