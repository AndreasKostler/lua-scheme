
(define (fib n)
  (if (< n 2)
      n
      (+ (fib (- n 2)) (fib (- n 1)))))

(write (fib 20))
(newline)

(define (fact n)
  (if (= n 1)
      1
      (* n (fact (- n 1)))))

(write (fact 10))
(newline)

