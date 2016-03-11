(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
    angle
    (p (sine (/ angle 3.0)))))

(print (sine 12.15))


;a, 12.15を何回割ったら0.1以下になるか
(define (waru3 x count)
  (print count)
  (if (< x 0.1)
    (print "end")
    (waru3 (/ x 3 ) (+ count 1))))

(waru3 12.15 0)
;結果は5回でした。

; 空間
;a / 3^x = 0.1
;10a = 3^x
;log(3)10a = x

; ステップも同じ？？

;空間は1
;ステップはlog(3)n
