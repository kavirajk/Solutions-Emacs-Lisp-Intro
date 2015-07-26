
;; • Write an interactive function that searches for a string.  If the
 ;;     search finds the string, leave point after it and display a message
 ;;     that says “Found!”.  (Do not use ‘search-forward’ for the name of
 ;;     this function; if you do, you will overwrite the existing version
 ;;     of ‘search-forward’ that comes with Emacs.  Use a name such as
 ;;     ‘test-search’ instead.)


(defun test-search(string)
  "Search for 'string' in a given buffer from the 'point-min'
Forword. If finds the string leave the point after it. Else
print appropriate error message"
  
  (interactive "sString: ")
  (goto-char (point-min))
  (condition-case nil
      (search-forward string nil nil)
    (message "Failed")))

(test-search "print")


;; Write a function that prints the third element of the kill ring in
;; the echo area, if any; if the kill ring does not contain a third
;; element, print an appropriate message.

(defun 3rd-of-kill-ring()
  "Print 3rd element of 'kill-ring' if any. else
error message"
  (if (car (nthcdr 2 kill-ring))
      (message "%s" (car (nthcdr 2 kill-ring)))
    (message "Kill-ring has no 3rd element")))

(3rd-of-kill-ring)


