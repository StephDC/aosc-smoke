#lang racket

(define (fib x)
  (cond [(< x 2) x]
        [else (+ (fib (- x 1)) (fib (- x 2)))]))

(map fib (build-list 10 values))
