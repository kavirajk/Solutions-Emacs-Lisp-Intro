;; Write a function similar to ‘triangle’ in which each row has a
;; value which is the square of the row number.  Use a ‘while’ loop.

(defun triangle(rows)
  " A triangle function with each row as
square of row number"
  (let ((count 1)
	(total 0))
    (while (< count (1+ rows))
      (setq total (+ total (* count count)))
      (setq count (1+ count)))
    total))

(triangle 5)

;; Write a function similar to ‘triangle’ that multiplies instead of
;; adds the values.

(defun triangle-mul(rows)
  "Same as triangle but multiplies instead of addition"
  (let ((count 1)
	(total 1))
    (while (< count (1+ rows))
      (setq total (* total (* count count)))
      (setq count (1+ count)))
    total))

(triangle-mul 5)

;; Rewrite these two functions recursively.  Rewrite these functions
;; using ‘cond’.

(defun triangle-recursive (rows)
  "Same as 'triangle' but using 'recusion' and 
'cond'"
  (cond ((= rows 1)
	 1)
	(t
	 (+ (* rows rows) (triangle-recursive (1- rows)))))
  )

(triangle-recursive 5)

(defun triangle-mul-recursive (rows)
  "Same as 'triangle' but using 'recusion' and 
'cond'"
 (cond ((= rows 1)
	1)
       (t
	(* (* rows rows) (triangle-mul-recursive (1- rows)))))
 )

(triangle-mul-recursive 5)

;; Write a function for Texinfo mode that creates an index entry at
;; the beginning of a paragraph for every ‘@dfn’ within the paragraph.
;; (In a Texinfo file, ‘@dfn’ marks a definition.  This book is
;;     written in Texinfo.)


(defun create-index-entry ()
  "In texinfo all the function definitions were written that starts with
'@dfn{...}'. This function extracts all @dfns and creates index entry for each one"
  (interactive)
  (save-excursion
    (mark-paragraph)
    (save-restriction
      (let (dfns)
	(while (search-forward "@dfn" nil t)
	  (when (search-forward "{" nil t)
	    (let ((start (point)))
	      (when (search-forward "}" nil t)
		(forward-char -1)
		(let ((end (point)))
		  (setq dfns
			(cons
			 (buffer-substring start end)
			 dfns)))))))
	(forward-paragraph -1)
	(dolist (dfn dfns)
	  (insert (concat "@cindex " dfn "\n")))))))
