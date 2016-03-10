(define (cubric x) (* x x x))

(define (cubric_root-iter guess x)
  (if (good-enough? guess x)
    guess
    (cubric_root-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x 
           (* guess guess)) 
        (* 2 guess)) 
     3))

(define (good-enough? guess x)
  (< (abs (- (cubric guess) x)) 0.0001))

(define (sqrt x)
  (cubric_root-iter 1.0 x))

(print (sqrt 3))
