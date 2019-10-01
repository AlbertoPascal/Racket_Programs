
;Writing into a file
;Overwriting
(define out (open-output-file "test.txt" ))
(display "this is only a test 1\n" out)
(display "this is only a test 2\n" out)
(display "this is only a test 3\n" out)
(display "this is only a test 4\n" out)
(close-output-port out)

(define in (open-input-file "test.txt"))
(read-line in)
(close-input-port in)