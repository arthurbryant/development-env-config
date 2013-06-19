#!/usr/bin/env gosh

;;; multiple.scm
(define (halve x)
    (/ x 2)
)
(define (double x)
    (+ x x)
  )
(define (f a b)
    (cond 
      ((= b 0) 0)
      ((= b 1) a)
      ((= (/ b 2) 0) (double (f a (halve b))))
      (else (+ a (f a (- b 1))))
    )
  )
(print (f 10 5))
(print (f 1 5))
