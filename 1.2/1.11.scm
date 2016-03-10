;再帰プロセス

(define (f n) (f-iter n))
(define (f-iter n) 
  (cond ((< n 3) n)
  (else (+ (f-iter (- n 1))
           (* 2 (f-iter (- n 2)))
           (* 3 (f-iter (- n 3)))))))

(print (f 4))

;反復プロセス

(define (fh n) 
  (cond ((< n 3) n)
  (else (fh-iter n 2 1 0 (- n 3)))))


#|(define (ff n n3 n2 n1 count)
  (define a n2)
    (define b n3)
    (define c (+ n3 (* 2 n2) (* 3 n1)))
    (define count (- count 1))
    (fh-iter n c b a count)
)
|#



(define (fh-iter n n3 n2 n1 count)
  (if (= count 0) ;最初condだったけどifに直したらできた。
    (+ n3 (* 2 n2) (* 3 n1))
    (fh-iter n (+ n3 (* 2 n2) (* 3 n1)) n3 n2 (- count 1))
    ))

(print (fh 4))

