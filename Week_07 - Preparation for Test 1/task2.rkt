#lang racket

; The depth of an atom x in a list xs
; is the number of times car must be applied to xs
; in order to reach x.
; Define a procedure that removes all atoms that are smaller than their depth.

(require racket/trace)

(define (deep-delete xss)
  (define (helper depth leftover-xss)
    (cond
      [(null? leftover-xss) null]
      [(list? (car leftover-xss)) (append
                                   (list (helper (add1 depth) (car leftover-xss)))
                                   (helper depth (cdr leftover-xss)))]
      [(< (car leftover-xss) depth) (helper depth (cdr leftover-xss))]
      [else (cons (car leftover-xss) (helper depth (cdr leftover-xss)))]
      )
    )
  (helper 1 xss)
  )

; can reach "1" by applying "car" one time and "2" can be reached with "caadr".
(equal? (deep-delete '(1 (2 (2 4) 1) 0 (3 (1)))) '(1 (2 (4)) (3 ())))
(equal? (deep-delete '(3 ((1)) 1 ((((3)) 2) 42) 3 (6) 1 0 (3 1 (((9))) 0))) '(3 (()) 1 (((())) 42) 3 (6) 1 (3 (((9))))))
