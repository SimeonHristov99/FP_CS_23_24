#lang racket

#|
(define (f xs) 42)

(foldr (λ (x acc) (and x acc)) #f '(#t #t #t #t #t))

;acc=#f
;x=#t
;acc=#f
;x=#t

(foldl (λ (x acc) (- acc x)) 1 '(1 2 3 4 5))
(foldl (λ (x acc) (- x acc)) 1 '(1 2 3 4 5))
|#

#|
Define a procedure (sort-list xs) that accepts a list
and returns a lambda procedure
that accepts a procedure and sorts the elements in the list
according to the passed procedure.
For example, if we wanted to sort the list
'("one" "two" "0" "five" "" "one hundred" "onehundred")
according to the length of each element,
the result should be '("" "0" "one" "two" "five" "onehundred" "one hundred").
|#

(define (sort-list xs)
  (λ (p?) (sort xs p?))
  )

(equal?
 ((sort-list '("one" "two" "0" "five" "" "one hundred" "onehundred"))
  (λ (s1 s2) (< (string-length s1) (string-length s2)))
  )
 '("" "0" "one" "two" "five" "onehundred" "one hundred")
)
