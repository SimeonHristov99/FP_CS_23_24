#lang racket

(define (fact-rec n)
  (cond
    [(negative? n) (error "n has to be non-negative")]
    [(= n 0) 1]
    [else (* n (fact-rec (sub1 n)))]
    )
  )

(define (fact-iter n)
  (define (helper leftover result)
    (if (= leftover 0)
        result
        (helper (sub1 leftover) (* result leftover))
        )
    )
  (if (negative? n)
      (error "n has to be non-negative")
      (helper n 1)
      )
  )


;(fact-rec -1)
(= (fact-rec 0) 1)
(= (fact-rec 1) 1)
(= (fact-rec 11) 39916800)

(= (fact-iter 0) 1)
(= (fact-iter 1) 1)
(= (fact-iter 11) 39916800)
