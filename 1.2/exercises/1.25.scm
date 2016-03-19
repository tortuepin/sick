(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))


(define (expmod base exp m)
  (remainder (fast-expt base exp) m))


(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
           (square (expmod base (/ exp 2) m))
           m))
        (else
          (remainder
            (* base (expmode base (- exp 1) m))
            m))))

;Alyssaの方法だと、かなり大きな数の計算をしなくてはならないが、最小の方法なら、squareの計算はすぐ終わる
