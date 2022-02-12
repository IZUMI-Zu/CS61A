(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s))) 

(define (caddr s) (car (cddr s)))

(define (sign val)
  (cond
  ((< val 0) -1)
  ((= val 0) 0)
  ((> val 0) 1)
  )
)

(define (square x) (* x x))

(define (pow base exp) 
  (if (= exp 1)
    base
    (if (even? exp) 
      (square (pow base (/ exp 2)))
      (* base (square (pow base (floor (/ exp 2)))))
      )
  ) 
)
