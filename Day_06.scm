(define fact 
	(lambda(n)
		(if (= n 1)
			1
			(* n (fact (- n 1))))))

(define my_length
	(lambda(ls)
		(if (null? ls)
			0
			(+ 1 (my_length (cdr ls))))))

(define my_sum
	(lambda(ls)
		(if (null?  ls)
			0
			(+ (car ls) (my_sum (cdr ls))))))

(define my_find
	(lambda(ls x)
		(if (null? ls)
			1
			(if (= x (car ls))
				1
				(+ 1 my_find((cdr ls) x))))))

(define my_find2
	(lambda (ls x)
		(if (>= (my_find ls x) x)
			#f
			(my_find ls x))))

(define my_reverse
	(lambda(ls1 ls2)
		(if (null? ls1)
			ls2
			(my_reverse (cdr ls1) (cons (car ls1) ls2)))))

(define my_newSum
	(lambda(ls x)
		(if (null? ls)
			x
			(my_newSum (cdr ls) (+ x (car ls))))))

(define (my-sum-let ls)
	(let 
		loop((ls0 ls) (n 0))
		(if (null? ls0)
			n
			(loop (cdr ls0) (+ (car ls0) n))
		)
	)
)
;let用于初始化loop函数第一次调用的值，之后使用loop函数求职返回

(define (my-sum-letrec ls)
	(letrec 
		(iter (ls0 n)
			(if (null? ls0)
				n
				(iter (cdr ls0) (+ (car ls0) n))))
    	(iter ls 0)
    )
)
;letrec直接初始化iter函数同时调用自己


(define (my-sum-do ls)
  (do ((ls0 ls (cdr ls0)) (n 0 (+ n (car ls0))))
      ((null? ls0) n)))