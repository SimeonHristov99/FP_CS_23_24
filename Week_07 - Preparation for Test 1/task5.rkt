#lang racket

(define (count-acc n d)
  (cond
    [(and (< n 10) (= n d)) 1]
    [(< n 10) 0]
    [(= (remainder n 10) d) (add1 (count-acc (quotient n 10) d))]
    [else (count-acc (quotient n 10) d)]
  )
)

(define (num-to-xs n)
  (map (λ (char) (string->number (string char)))
       (string->list (number->string n)))
  )

(define (get-distribution n)
  (let
      ([sort-res (sort (num-to-xs (expt n 2)) <)])
      (map
       (λ (x) (cons x (count (curry = x) sort-res)))
       (remove-duplicates sort-res))    
      )
  )


(get-distribution 123) ;→ '((1 . 2) (2 . 1) (5 . 1) (9 . 1))
