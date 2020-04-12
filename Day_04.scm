(define absoluteValue 
	(lambda (num)
		(if (> num 0)
			num 
			(- 0 num))))

(define reciprocalValue
	(lambda (num)
		(if (= num 0)
			#f 
			(/ 1 num))))

(define int2ASCII
	(lambda (num)
		(if (< num 33)
			#f 
			(if (> num 126)
				#f 
				(integer->char num)))))

(define (pro3and a b c)
	(and (positive? a)
		(positive? b)
		(positive? c)
		(* a b c)))

(define (pro3or a b c)
	(if (or (negative? a)
		(negative? b)
		(negative? c))
		(* a b c)))


(define scoreLevel
	(lambda (score)
		(cond
			((>= score 80) A)
			((<= 60 score 79) B)
			((<= 40 score 59) C)
			(else D))))