;; Set ‘flowers’ to ‘violet’ and ‘buttercup’.  Cons two more flowers on to
;; this list and set this new list to ‘more-flowers’.  Set the CAR of
;; ‘flowers’ to a fish.  What does the ‘more-flowers’ list now contain?

(setq flower '(violet buttercup))

(setq flower (cons 'rose flower))
(setq flower (cons 'lily flower))

(setq more-flowers flower)

(setcar flower 'fish )

more-flowers

