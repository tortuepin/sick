;パスカルの三角形の要素を求める

(define (getRank n count pivod Rank) 
  (cond ((= n count) Rank)
  (else 
    (cond ((= pivod (- (+ count 1) (+ Rank 1)))
          (getRank n (+ count 1) (+ count 1) (+ Rank 1)))
    (else (getRank n (+ count 1) pivod Rank))))))
(define (gRank n) (getRank n 0 0 0))
(define (pas n)
  (if (= (gRank (- n 1)) (gRank n) (gRank (+ n 1))) 
   (+ (pas (- n (gRank n))) (pas (- n (+ 1 (gRank n)))))   
    1))


