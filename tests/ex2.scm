
(define (divide-by-list num dens res)
  (call/cc (lambda (k)
             (if (null? dens)
                 res
                 (let ((val (car dens)))
                   (if (= val 0)
                       (k "Cannot divide by zero!")
                       (divide-by-list num (cdr dens) (cons (/ num val) res))))))))

(write (divide-by-list 100 '(1 2 3 4 5 6 7 8 9) '()))
(newline)
(write (divide-by-list 100 '(1 2 3 4 5 0 7 8 9) '()))
(newline)
