#!/usr/bin/env gosh

;;; power.scm 
(define (power b n)
    (power-iter b n 1)
  )
(define (power-iter b n a)
    (cond 
      ((= n 0) a)
      ((even? n) (power-iter (square b) (/ n 2) a))    
      (else (power-iter b (- n 1) (* a b)))    
    )
  )
(define (square x)
	(* x x)
)
(print (power 2 4))
