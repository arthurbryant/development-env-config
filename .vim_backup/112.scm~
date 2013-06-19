#!/usr/bin/env gosh

(define (f m n)
    (cond 
      ((= m 1) 1)
      ((= n 1) 1)
      ((= m n) 1)
      (print "f" (- m 1) (- n 1) "f" (- m 1) n);
      (+ (f (- m 1) (- n 1)) (f (- m 1) n))
    )
)
(print (f 3 3))
(print (f 3 1))
(print (f 1 2))
(print (f 4 2))
