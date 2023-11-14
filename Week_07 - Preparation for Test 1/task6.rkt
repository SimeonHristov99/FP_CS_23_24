#lang racket

(define (get-missing-length xss)
  (let
      ([sort-res (sort (map length xss) <)])
    (car
     (filter
     (λ (x) (not (member x sort-res)))
            (range 1 (+ (length sort-res) 2)))
    )
    )
  )

(get-missing-length '((1 2) (4 5 1 1) (1) (5 6 7 8 9))); → 3
(get-missing-length '(("a", "a", "a") ("a", "a") ("a", "a", "a",
"a") ("a") ("a", "a", "a", "a", "a", "a"))); → 5