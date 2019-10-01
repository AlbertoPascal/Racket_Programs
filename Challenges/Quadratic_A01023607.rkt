#|
Alberto Pascal A01023607
Quadratic Expression Solver

This program will solve any quadratic expressions by making use of 
x = (-b +- sqrt (b2 - 4ac) )/2a
In case a is 0, it shall do x = -c/b

|#

(define (quadratic a b c)
	(if (> a 0)  ; we check if it is bound to follow the formulae solution. 
		(list (/ (+ (- b) (sqrt (- (* b b) (* 4 a c)))) (* 2 a) ) ; if it is, we calculate X with the +sqrt first. 
	 	      (/ (- (- b) (sqrt (- (* b b) (* 4 a c)))) (* 2 a) ) ; Now we calculate x with the - sqrt.
		)
	(list (- (/ c b) ) ) ; if it isnt, we calculate the second option, -c/b.
	)
)