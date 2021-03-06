(define (sq x) (* x x))
(define (addSq x y) (+ (sq x) (sq y)))
(define (max a b c) (cond
		     ((and (> a b) (> a c)) a)
		     ((and (> b c) (> b a)) b)
		     ((and (> c a) (> c b)) c)))
(define (max2 a b) (if (> a b) a b))

(define (ans a b c) (cond
		     ((= (max a b c) a) (addSq a (max2 b c)))
		     ((= (max a b c) b) (addSq b (max2 a c)))
		     ((= (max a b c) c) (addSq c (max2 a b)))))

(print (ans 3 6 1))