#|
Program to convert temperatures in Racket
	Valid extensions: .rkt or .scm

Alberto Pascal

|#

;Create a fare function
(define (F->C farenheit)
	(* (- farenheit 32) (/ 5 9))
)

(define (C->F celcius)
	(+ (* celcius (/ 9 5)) 32)
)
