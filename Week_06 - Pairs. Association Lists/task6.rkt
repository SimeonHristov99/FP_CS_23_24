#lang racket

(define (find-one xss)
  (define (helper row-number leftover)
    (cond
      [(null? leftover) (cons -1 -1)]
      [(member 1 (car leftover)) (cons row-number (- 6 (length (member 1 (car leftover)))))]
      [else (helper (add1 row-number) (cdr leftover))]
      )
    )
  (helper 1 xss)
  )

(define (mhd point1 point2)
  (+ (abs (- (car point1) (car point2))) (abs (- (cdr point1) (cdr point2))))
  )

(define (steps-bm xss)
  (mhd (find-one xss) (cons 3 3))
  )

(steps-bm '((0 0 0 0 0)
            (0 0 0 0 1)
            (0 0 0 0 0)
            (0 0 0 0 0)
            (0 0 0 0 0)) ) ; → 3
(steps-bm '((0 0 0 0 0)
            (0 0 0 0 0)
            (0 1 0 0 0)
            (0 0 0 0 0)
            (0 0 0 0 0)) ) ; → 1
(steps-bm '((0 0 0 0 0)
            (0 0 0 0 0)
            (0 0 1 0 0)
            (0 0 0 0 0)
            (0 0 0 0 0)) ) ; → 0
(steps-bm '((0 0 0 0 0)
            (0 0 0 0 0)
            (0 0 0 0 0)
            (0 0 0 0 0)
            (0 0 0 0 1)) ) ; → 4
