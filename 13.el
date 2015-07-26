;; Using a ‘while’ loop, write a function to count the number of
;; punctuation marks in a region—period, comma, semicolon, colon,
;; exclamation mark, and question mark.  Do the same using recursion.

;; Using while loop

(defun count-punctuation (beg end)
  "Count number of punctualtion in the 'region'
between 'beg' and 'end'"
  (interactive "r")
  (message "Counting punctuations...")
  (save-excursion
    (goto-char beg)
    (let ((count 0))

      (while (and (< (point) end)
		  (re-search-forward "[.,;:!?]" end t))
	(setq count (1+ count)))
      (cond ((zerop count)
	     (message "Region has no punctuation"))
	    (t
	     (message "Region has %d punctuation(s)" count))))))

;; Usage
;; try selecting below region to see 'count-punctuation' working

"This s, a.  sample text! OMG!! with: punctuatioin?? ;"

;; Using recursion

(defun count-punctuation-recursive (beg end)
  "Count number of punctuation in the 'region'
between 'beg' and 'end'"
  (interactive "r")
  (message "Counting punctuation")
  (save-excursion
    (goto-char beg)
    (let ((count (recursive-count end)))
      (cond ((zerop count)
	     (message "Region has no punctuation"))
	    (t
	     (message "Region has %d punctuation(s)" count))))))


(defun recursive-count (end)
  "Actual recursive fuction that counts punctuation"
  (if (and (< (point) end)
	   (re-search-forward "[.,;:?!]" end t))
      (1+ (recursive-count end))
    0))

;; Usage
;; try selecting below region to see 'count-punctuation-recursive' working

"This s, a.  sample text! OMG!! with: punctuatioin?? ;"
