#|
Program to calculate a triangle's are in Racket
	Valid extensions: .rkt or .scm

Alberto Pascal

|#

#|
s = (a + b + c) /2
area = sqrt ( (s*(s-a)) * (s-b) * (s-c))
|#


;Create an area function
(define (GetAreaFromSides a b c)
	(sqrt (* (* (/ (+ a b c) 2) (- (/ (+ a b c) 2) a)) (- (/ (+ a b c) 2)  b) (- (/ (+ a b c) 2) c) ) )
)

