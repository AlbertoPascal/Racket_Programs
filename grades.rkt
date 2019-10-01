#|
Program to calculate the mean of three grades. It shall return "pass" or "fail"
	Valid extensions: .rkt or .scm

Alberto Pascal

|#

(define (Pass? grade1 grade2 grade3)
	

	 (if (>= (/ (+ grade1 grade2 grade3) 3) 70 ) "Passed" "Failed")

	 )
(define (LeapYear? year)

	(if (exact-positive-integer? (/ year 4) ) (if(exact-positive-integer? (/ year 100)) (if (exact-positive-integer? (/ year 400)) #t #f) #t) #f)

)

(define (greatest num1 num2 num3)

	(if (> num1 num2) (if (> num1 num3) num1 num3) (if (> num2 num3) num2 num3))
)

(define (order num1 num2 num3)
	(cond
		[(and (<= num1 num2) (<= num1 num3) (<= num2 num3)) (list num1 num2 num3)]
		[(and (<= num1 num3) (<= num1 num2) (<= num3 num2)) (list num1 num3 num2)]
		[(and (<= num2 num1) (<= num2 num3) (<= num1 num3)) (list num2 num1 num3)]
		[(and (<= num2 num1) (<= num2 num3) (<= num3 num1)) (list num2 num3 num1)]
		[(and (<= num3 num1) (<= num3 num2) (<= num1 num2)) (list num3 num1 num2)]
		[(and (<= num3 num1) (<= num3 num2) (<= num2 num1)) (list num3 num2 num1)]
	)
)

