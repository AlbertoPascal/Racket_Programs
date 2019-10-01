#|
Prime numbers
Alberto Pascal 
A01023607
|#


(define (prime? number)
	(divisible number 2)
)
(define (divisible number divisor)
	
	(if (> number 1) ; any number from 1 or below is NOT a prime due to not having only two divisors or not being positive.
		;I will check regularly
		(if (or (>= divisor number) (<= number 3))
			#t ; if true, return true cause I finished. 
			(if (exact-positive-integer? (/ number divisor)) ; else keep checking. 
				#f ; if true, return false. Not a prime.
				(divisible number (+ divisor 1)) ; if false, check next.  
			)
		)
		;If my number is lower than 0, it cannot be a prime number
		#f
	)
)
(define (primes-less-than number)
		(list_primes '() 2 number)
)
(define (list_primes lst curr_num num)
		(if (>= curr_num num)
			lst
			(if (prime? curr_num)
				(list_primes (append lst (list curr_num)) (+ curr_num 1) num) ; if prime, I add to the list
				(list_primes lst (+ curr_num 1) num); else, I check the next one
			)
		)
)
(define (nth-prime position) ; only missing this part
	(find-nth-primes (primes-less-than position) position)
)

(define (find-nth-primes lst position)
	(if (< (length lst) position) 
		(find-nth-primes (increase-primes lst (+ (last lst) 1)) position)
		(last lst)
	)
				
)
(define (increase-primes lst curr_num)
	(if (prime? curr_num)
		(append lst (list curr_num))
		(increase-primes lst (+ curr_num 1))
	)
)