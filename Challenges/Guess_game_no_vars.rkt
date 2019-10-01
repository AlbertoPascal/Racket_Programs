#|
Alberto Pascal A01023607
Guess Number Game
idea: In order to prevent using variables I need a secondary function that receives the input read. This function
will compare the values.
|#

;This function will start a new game. the limit determines the highest number that can be generated
(define (guess-game upper_limit)
	;here we call the function to play the game. We start generating the answer and stating we are on try 1.
	;Also, we send a message. Our initial message is "Welcome to the game"
	(get-answer "Welcome to the number guess game!" (random upper_limit) 1)

)
;This function will be used to store the users guess and compare it with the number to be guessed. 
(define (compare correct_answer guess num_tries)
	(if (> guess correct_answer)
		;if my guess is higher than my correct answer, I need to say that my answer needs to be lower.
		 (get-answer "Enter a lower number" correct_answer (+ num_tries 1)) 
		 ;If my guess is not higher, I need to check if i guessed correctly. 
		 (if (= guess correct_answer)
		 	; if I guessed correctly, end the game and print my number of tries
		 	(printf "Congratulations! You won after ~a tries." num_tries)
		 	;if my answer was incorrect and it was higher than the correct one, increaase tries and give the hint.
		 	(get-answer "Enter a higher number" correct_answer (+ num_tries 1))
		 )
	)
)
;Function to play the game. Receives a message to show progress, knows the answer and keeps track of tries
(define (get-answer message correct_answer num_tries)

	;Here we print the message we received to show our progress in the game
	(printf "~a \n" message)
	;Here we ask for the new guess
	(printf "Enter your guess: ")
	;I will send my new guess to be compared with the answer
	(compare correct_answer (read) num_tries)

)