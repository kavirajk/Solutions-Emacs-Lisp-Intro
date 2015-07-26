;; Write a non-interactive function that doubles the value of its
;; argument, a number.  Make that function interactive.

;; Non-interactive
(defun double-it (arg)
  "Return the 'double' of ARG"
  (* arg 2))

;; Usage
(double-it 23)

;; Interactive
(defun interactive-double-it (arg)
  "Return the 'double' of ARG"
  (interactive "p")
  (message "%d" (* arg 2)))

;; Write a function that tests whether the current value of
;; ‘fill-column’ is greater than the argument passed to the function,
;; and if so, prints an appropriate message.

(defun is-greater-than-fill-column (arg)
  "Check 'fill-column' of current-buffer is greater than
ARG"
  (if (> arg fill-column)
      (message "Arg(%d) is greater than 'fill-column'(%d)" arg fill-column)
    (message "Arg(%d) is not greater than 'fill-column'(%d)" arg fill-column)))

;; Usage
(is-greater-than-fill-column 10)
(is-greater-than-fill-column 80)

