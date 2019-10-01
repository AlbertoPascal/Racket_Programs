#|
First program in Racket
	Valid extensions: .rkt or .scm

Alberto Pascal

|#

;Create a greeting function
(define (greeting name)
	(display (string-append "hello " name "!"))
)

