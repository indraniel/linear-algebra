(require-extension numbers)

(define (tower-of-hanoi-moves n) 
    (if (= n 1)
       1
       (+ (* (tower-of-hanoi-moves (- n 1)) 
              2) 
           1) ) )

; Two helper functions
(define (first-few-outputs proc n)
    (first-few-outputs-aux proc n '()) )

(define (first-few-outputs-aux proc n lst)
    (if (< n 1)
    lst 
    (first-few-outputs-aux proc (- n 1) (cons (proc n) lst)) ) )

;; (first-few-outputs tower-of-hanoi-moves 64)