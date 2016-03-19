;randomがうまくいかないので飛ばし
;gocheにはrandomがない

(use math.mt-random)

(define mt-m (make  :seed (sys-time)))


(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m)) m))
        (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (mt-random-integer mt-m (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (runtime)
    (use srfi-11)
      (let-values (((a b) (sys-gettimeofday)))
                                (+ (* a 1000000) b)))
(define (smallest-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
                  ((divides? test-divisor n) test-divisor)
                          (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b) (= (remainder b a) 0))
(define (fast-prime? n)
    (= n (smallest-divisor n)))
(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (prime? n)
    (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
  (display "***")
  (display elapsed-time))


(define (odd? n)
  (= (remainder n 2) 1))
(define (search-for-primes from n)
  (cond ((odd? from) (start-search from n 1))
        (else (start-search (+ from 1) n 1))))
(define (start-search from n count )
  (cond ((< n count) (display "end"))
        (else (timed-prime-test from)
              (start-search (+ from 1) n (+ count 1)))))
       

(print (search-for-primes 1000 100))
(print (search-for-primes 10000 100))
(print (search-for-primes 100000 100))
