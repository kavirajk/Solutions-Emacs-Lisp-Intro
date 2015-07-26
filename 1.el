;; Generate an error message by evaluating an appropriate symbol that
;; is not within parentheses.


undefined-variable ;; gives error. Not defined
fill-column        ;; No error. 'fill-column' is defined already


;; Generate an error message by evaluating an appropriate symbol that
;; is between parentheses.

(undefined-function) ;; gives error. No function definition
(point)              ;; No error. 'point' has function definition already

;;Create a counter that increments by two rather than one.

(setq count 0)
(setq count (+ count 2))

;; Write an expression that prints a message in the echo area when
;; evaluated.

(message "Hello, World!")
