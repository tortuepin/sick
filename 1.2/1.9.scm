;以下の二種類の手続きのプロセスを図示
;なお
(define a 4)
(define b 5)
;である

;-------------------------------------

(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))

;この手続きは以下のようになる

(inc (+ (dec 4) 5))
(inc (inc (+ (dec 3) 5)))
(inc (inc (inc (+ (dec 2) 5))))
(inc (inc (inc (inc (+ (dec 1) 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
(9)

;これは再帰的プロセス

;--------------------------------------
(define (+ a b)
  (if (= a 0) b (+ (dec a) (inc b))))

;この手続きは以下のようになる

(+ (dec 4) (inc 5))
(+ (dec 3) (inc 6))
(+ (dec 2) (inc 7))
(+ (dec 1) (inc 8))
(9)

;これは反復プロセス


