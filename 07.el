;; Construct a list of four birds by evaluating several expressions with
;; ‘cons’.  Find out what happens when you ‘cons’ a list onto itself.
;; Replace the first element of the list of four birds with a fish.
;; Replace the rest of that list with a list of other fish.

(setq birds (cons 'owl
      (cons 'eagle
	    (cons 'sparrow
		  (cons 'pecock ())))))

birds

;; 'cons' a list onto itself
(cons birds birds)

;; replace first element of list
(setcar birds 'fish1 )
birds

;; replace the rest of list
(setcdr birds '(fish2 fish3 fish4))
birds

