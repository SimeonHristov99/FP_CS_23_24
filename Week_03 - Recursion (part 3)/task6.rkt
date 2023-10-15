#lang racket

#|
A digital root is the recursive sum of all the digits in a number.
Given n, take the sum of the digits of n.
If that value has more than one digit,
continue reducing in this way until a single-digit number is produced.
This is only applicable to the natural numbers.
|#

(define (digital-root n)
  42
  )

(= (digital-root 16) 7)
; => 1 + 6
; => 7
(= (digital-root 942) 6)
; => 9 + 4 + 2
; => 15
; => 1 + 5
; => 6
(= (digital-root 132189) 6)
(= (digital-root 493193) 2)
