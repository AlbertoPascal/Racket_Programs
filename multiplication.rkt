

(define (ui)
	(display "Enter num 1: ")
	(define num1 (read))
	(display "Enter num 2:")
	(define num2 (read))
	(define result (* num1 num2))
	(display (string-append "The multiplication " num1 "  X "  num2 "  = " (number->string result)))
	)

(ui)