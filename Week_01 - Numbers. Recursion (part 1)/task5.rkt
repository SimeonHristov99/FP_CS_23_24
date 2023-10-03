#lang racket

(define (fib-rec n)
  (cond
    [(negative? n) (error "n has to be at least 0")]
    [(< n 2) n]
    [else (+ (fib-rec (sub1 n)) (fib-rec (- n 2)))]
    )
  )

(define (fib-iter n)
  (define (helper n0 n1 leftover)
    (cond
      [(zero? leftover) n0]
      [(= leftover 1) n1]
      [else (helper n1 (+ n0 n1) (sub1 leftover))]
      )
    )
  (helper 0 1 n)
  )

(fib-iter 50)

(= (fib-rec 11) 89)

(= (fib-iter 11) 89)
