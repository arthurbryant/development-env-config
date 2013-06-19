#!/usr/bin/env gosh

;;; smallest-divisor.scm 
(define (smallest-divisor n)
    (find-divisor n 2)
  )
(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
        ((even? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))
    )
  )

(define (square x)
	(* x x)
)
(define (even? test-divisor n)
    ()  
)

