; Ackermann's function
(define (A x y)
  (cond
   ((or (= y 0) (= y 1) (= x 0)) (* 2 y))
   (else (A (- x 1)
	    (A x (- y 1))))))

; (A 1 10) -> (A 0 (A 1 9)) -> (A 0 (A 0 (A 1 8))) -> (A 0 (A 0 (A 0 (A 1 7))))
; ... -> (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1)))))))))) -> (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2))))))))))
; -> 1024

; (A 2 4) -> (A 1 (A 2 3)) -> (A 1 (A 1 (A 2 2))) -> (A 1 (A 1 (A 1 (A 2 1)))) -> (A 1 (A 1 (A 1 2)))
; -> (A 1 (A 1 (A 0 (A 1 1)))) -> (A 1 (A 1 (A 0 2))) -> (A 1 (A 1 4)) -> (A 1 16) -> 2^16 -> 65536

; (A 3 3) -> (A 2 (A 2 (A 3 1))) -> (A 2 (A 2 2)) -> (A 2 2^2)
; 2^(2^4)  -> 65536

(define (f n) (A 0 n)); computes 2n 
(define (g n) (A 1 n)); computer 2^n (yields linear recursive process)
(define (h n) (A 2 n)); computes 2^(2^n)



















