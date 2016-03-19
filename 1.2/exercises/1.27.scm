(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
           (square (expmod base (/ exp 2) m))
           m))
        (else
          (remainder
            (* base (expmod base (- exp 1) m))
            m))))

(define (carmicheal? n)
  (check-micheal n 1))


(define (check-micheal n a)
  (cond ((= n a) (display "MICHEAL!!"))
        ((= (expmod a n n) a) (check-micheal n (+ a 1)))
        (else (display "NOT MICHEAL!!"))))

(print (carmicheal? 110))
