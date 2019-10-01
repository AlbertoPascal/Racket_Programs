(define (sumList inputList)
	
)
(define (NextInList inputList result)
	(if (empty? inputList)
		result
		(+ result (car inputList) ((NextInList inputList)))
	)
)