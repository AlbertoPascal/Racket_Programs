#|
List comprehensions
Alberto Pascal 
|#

;Compute the square of each element in 'data'
(define (squares data)
	(let loop
		( [lst data]
		  [results empty])
		  (if (empty? lst)
		  	results
		  	(loop (cdr lst) (append results (list (* (car lst) (car lst)))))
		  )
	)
)

(define (squares-map data)
	(map (lambda (x) (* x x)) data)
)

;using list comprehensions
(define (squares-for data)
	(for ([i data])
		(display (* i i))
	)
)