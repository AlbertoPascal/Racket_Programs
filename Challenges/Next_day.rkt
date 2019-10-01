#|
Next day program
Alberto Pascal A01023607
This program will receive a date in the form of a list and return another date with the following day. It will
consider whether the year is a leap year or not and the different days a month can have.

|#

;This function will determine whether we are in a leap year or not.
(define (LeapYear? year)
	
	; The formula to verify is: if it is exactly divisible by 4 and is is not exactly divisible by 100, it is leap year. However, 
	; if it is exactly divisible by 4 and 100, we need to see if it is exactly divisible by 400. If it is, we return true. Otherwise, false.
	(if (exact-positive-integer? (/ year 4) ) (if(exact-positive-integer? (/ year 100)) (if (exact-positive-integer? (/ year 400)) #t #f) #t) #f)

)

;This function will return the amount of days a month has. 
(define (getDays Month Year)

;Checks if I'm in month 1-7 and if it is a pair or of it is in months 8-10 and not a pair. This means it has 31 days (except Feb)
		(if (or (and (exact-positive-integer? (/ Month 2)) (< Month 8)) (and (> (remainder Month 2) 0) (> Month 7)) )
			(if (= Month 2); if it is Feb, I only have a total of 28 days (if not leap year)
				(if (LeapYear? Year) ; If it is Feb and a leap year, I have 29 days. 
					(+ 29);set days to 29 max
					(+ 28);else, set days to 28 max
				)
				(+ 30);else, set days to 31 max
			)
			(+ 31);If none of the above, set days to 30 max.
		)
)

(define (next_day date) ;receives a list with the number of day, number of month and number of year
	(let*
		(
		[Day (car date)] ; I store the number of days
		[Month (car (cdr date))] ; I store the number of months
		[Year (car (cdr (cdr date)))] ; I store the number of Year
		[Max_days 0]) ; I prepare to know my max month days. 

		(set! Max_days (getDays Month Year)) ;according to my month and year, calculate max  days in my month.
		;Up to here I now  know the max number of days I can have in that month of that year. 

		(if (> (+ Day 1) Max_days) ; Now I check if adding 1 to my days exceeds the max
			
			; if it does, this means I need to go to next month. 
			(if (> (+ Month 1) 12) ;Now I need to check if my months exceed 12. 
				; If they do, this means I need a new year
				(list 1 1 (+ Year 1)) ;Therefore, I return first day, first month and new year.
				;else, I list the first day of next month in same year
				(list 1 (+ Month 1) Year) 
			)
			;Else I can just increase days because they do not cause a month change.
			(list (+ Day 1) Month Year)
		)

	)
	
	
)


