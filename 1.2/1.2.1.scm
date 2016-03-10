;p33 線形再帰プロセスで6!を求める

(define (factorial1 n)
  (if (= n 1)
    1
    (* n (factorial1 (- n 1)))))

(print (factorial1 6))




;p34 反復プロセスで6!を求める
;※再帰手続きではあるが、再帰プロセスではない

(define (factorial n)
  (fact-iter 1 1 n))
(define (fact-iter product counter max-count)
  (if (> counter max-count)
    product
    (fact-iter (* counter product)
               (+ counter 1)
               max-count)))

(print (factorial 6))


