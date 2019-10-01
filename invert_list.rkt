#|
Invert list program
idea: add first to last and then delete first. 
|#

(define (invert-list input)
	(change-order (length input) input empty)
)

(define (change-order curr_length curr_list new_list)
	(if (> curr_length 0)
		(change-order (- curr_length 1) (cdr curr_list)  (append (list (first curr_list)) new_list) )
		new_list
	)
)
