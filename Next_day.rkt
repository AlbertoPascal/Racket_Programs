#|
Next day program
Alberto Pascal A01023607
This program will receive a date in the form of a list and return another date with the following day.

;Checks if I'm in month 1-7 and if it is a pair. This means it has 31 days (except Feb)
		(if (or (and (exact-positive-integer? (/ Month 2)) (< Month 8)) (and (> (remainder Month 2) 0) (> Month 7)) )
			(if (= Month 2); if it is Feb, I only have a total of 28 days (if not leap year)
				(if (LeapYear? Year)
					(set! Max_days 29);set days to 29 max
					(set! Max_days 28);else, set days to 28 max
				)
				(set! Max_days 31);else, set days to 31 max
			)
			(set! Max_days 30);else set days to 30 max.
		)
		(display (string-append "Month " (number->string Month) " has " (number->string Max_days) " days"))


|#

(define (LeapYear? year)

	(if (exact-positive-integer? (/ year 4) ) (if(exact-positive-integer? (/ year 100)) (if (exact-positive-integer? (/ year 400)) #t #f) #t) #f)

)
(define (getDays Month Year)
;Checks if I'm in month 1-7 and if it is a pair. This means it has 31 days (except Feb)

		(if (or (and (exact-positive-integer? (/ Month 2)) (< Month 8)) (and (> (remainder Month 2) 0) (> Month 7)) )
			(if (= Month 2); if it is Feb, I only have a total of 28 days (if not leap year)
				(if (LeapYear? Year)
					(+ 29);set days to 29 max
					(+ 28);else, set days to 28 max
				)
				(+ 30);else, set days to 31 max
			)
			(+ 31);else set days to 30 max.
		)
)
(define (next_day date) ;receives a list with the number of day, number of month and number of year
	(let*
		([Day (car date)]

		[Month (car (cdr date))]
		[Year (car (cdr (cdr date)))]
		[Max_days 0])

		(set! Max_days (getDays Month Year))
		;Up to here I now  know the max number of days I can have in that month of that year. 

		(if (> (+ Day 1) Max_days)
			; this means I need to go to next month. 
			(if (> (+ Month 1) 12)
				; This means I need a new year
				(list 1 1 (+ Year 1))
				;else, I list the first day of next month in same year
				(list 1 (+ Month 1) Year)
			)
			;Else I can just increase days
			(list (+ Day 1) Month Year)
		)

	)
	
	
)


