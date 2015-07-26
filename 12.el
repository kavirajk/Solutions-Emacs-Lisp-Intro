;; Write a function to search for a regular expression that matches
;; two or more blank lines in sequence.

;; Explanation: Here "^\n\\{1,\\}" regexp denotes the one or more blank lines. One can also use "\n\n+" regexp for matching one or more blank lines
(defun blankline-search(&optional arg)
  "Search two or more blank lines in sequence using
Regexp"
  (interactive "p")
  (let ((arg (if arg arg 1)))
    (re-search-forward "^\n\\{1,\\}" nil nil arg)))

;; Usage

(blankline-search 4)

a little line

another line


yet another





and one more

;;Write a function to search for duplicated words, such as ‘the the’.
;; Note: this function is similar to the one in "the-the Duplicated words function in Appendix."

(defun the-the (&optional arg)
  "Search forward for for a duplicated word."
  (interactive "p")
  (message "Searching for for duplicated words ...")
  (push-mark)
  (let ((arg (if arg arg 1)))
    (if (re-search-forward
	 "\\b\\([^@ \n\t]+\\)[ \n\t]+\\1\\b" nil 'move arg)
	(message "Found duplicated word.")
      (message "End of buffer"))))

;;Usage

(the-the 2)


the of of Welcome


hello how how are you. How how you doing?
