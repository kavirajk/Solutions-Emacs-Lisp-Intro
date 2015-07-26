;;Write an interactive function with an optional argument that tests
;; whether its argument, a number, is greater than or equal to, or else,
;; less than the value of ‘fill-column’, and tells you which, in a message.
;; However, if you do not pass an argument to the function, use 56 as a
;; default value.

(defun optional-arg (&optional arg)
  "Check optional ARG whether its number and greater or lesser than
'fill-column'"
  (interactive "P")
  (let((arg (if (not arg)
		56
	      arg)))
    (if (numberp arg)
	(if (>= arg fill-column)
	    (message "%d arg is greater than or equal to fill-column %d" arg fill-column)
	  (message "%d arg is lesser than fill-column %d" arg fill-column))
      (message "arg is not a number!"))
    )
  )
(optional-arg 80)
(optional-arg "kavi")

