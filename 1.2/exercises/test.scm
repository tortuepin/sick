(define (double n) (* n 2))
(define (halve n) (/ n 2))
(define (fast-times a b)
    (define (fast-times-iter c a b)
         (cond ((= b 0) c)
                        ((even? b) 
                                   (fast-times-iter (double c) a (halve b)))
                                 (else (fast-times-iter (+ c a) a (- b 1)))))
      (fast-times-iter 0 a b))


(print (fast-times 4 4))
(print (fast-times 3 8))
(print (fast-times 31 33))
