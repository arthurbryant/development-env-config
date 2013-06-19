#!/usr/bin/env gosh

(define (cube guess x)
    (print "guess=" guess);
    (if (good_enough guess x) 
        guess 
        (cube (improve guess x) x)
    )
)
(define (good_enough guess x) 
    (< 
        (abs 
            (- 
                (square guess) 
                x
            )
        ) 
        0.00001
    ) 
)
(define (abs x)
    (if (< x 0) 
        (- x)
        x 
    )
)
(define (improve guess x)
    (/ 
        (+ guess 
            (/ x guess)
        ) 
    2) 
)
(define (square x) (* x x))
(cube 1.0 2)
(print (sqrt 1e50))
