;; Using ‘C-h v’ (‘describe-variable’), look at the value of your kill
;; ring.  Add several items to your kill ring; look at its value
;; again.  Using ‘M-y’ (‘yank-pop)’, move all the way around the kill
;; ring.  How many items were in your kill ring?  Find the value of
;; ‘kill-ring-max’.  Was your kill ring full, or could you have kept
;; more blocks of text within it?

kill-ring
kill-ring-max ;; 60

;; Using ‘nthcdr’ and ‘car’, construct a series of expressions to
;; return the first, second, third, and fourth elements of a list.

(setq matrix '(neo smith trinity morpheus))

;; first element
(car (nthcdr 0 matrix)) ;; or just (car matrix)

;; second element
(car (nthcdr 1 matrix))

;; third element
(car (nthcdr 2 matrix))

;; fourth element
(car (nthcdr 3 matrix))


