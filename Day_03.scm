; Hello world as a variable
(define vhello "Hello world")     ;1

; Hello world as a function
(define fhello (lambda () "Hello world")) ;2

; hello with name
(define hello
  (lambda (name)
    (string-append "Hello " name "!")))

; sum of three numbers
(define sum3
  (lambda (a b c)
    (+ a b c)))

; hello with name
(define (hello_ name)
  (string-append "Hello " name "!"))


; sum of three numbers
(define (sum3_ a b c)
  (+ a b c))

(define plus1
	(lambda (num)
		(+ num 1)))

(define mins1
	(lambda (num)
		(- num 1)))

(define pi (* 4 (atan 1.0)))

(define v1
	(lambda (v tim)
		(* v tim)))

(define t1
	(lambda (v1)
		(/ v1 4.9)))

; velocity = 100
; theta = 60
(define vel 100)
(define theta 60)

(v1 (* vel (cos (* pi (/ theta 180)))) (* vel (t1 (sin (* pi (/ theta 180))))))

(define cal
	(lambda (vel theta)
		(v1 (* vel (cos (* pi (/ theta 180)))) (* vel (t1 (sin (* pi (/ theta 180))))))))

(cal 40 30)