(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))

(gcd 206 40)
(gcd 40 (remainder a b))
(gcd 40 6)
(gcd 6 4)
(gcd 4 2)
(gcd 2 2)
(gcd 2 0)

(gcd 206 40)
(gcd 206 (remainder 206 40))
(gcd 40 (remainder 40 6))
(gcd 6 (remainder 6 4))
(gcd 2 (remainder 2 2))
(gcd 2 0)

;適応の方は、remainderがいっぱい重なる

