;; Write a function that will display the first 60 characters of the
;; current buffer, even if you have narrowed the buffer to its latter half
;; so that the first line is inaccessible.  Restore point, mark, and
;; narrowing.  For this exercise, you need to use a whole potpourri of
;; functions, including ‘save-restriction’, ‘widen’, ‘goto-char’,
;; ‘point-min’, ‘message’, and ‘buffer-substring’.

;;    (‘buffer-substring’ is a previously unmentioned function you will
;; have to investigate yourself; or perhaps you will have to use
;; ‘buffer-substring-no-properties’ or ‘filter-buffer-substring’ …, yet
;; other functions.  Text properties are a feature otherwise not discussed
;; here.  *Note Text Properties: (elisp)Text Properties.)

;;    Additionally, do you really need ‘goto-char’ or ‘point-min’?  Or can
;; you write the function without them?

;; with goto-char and point-min
(defun copy-first-60 ()
  "Print first 60 chars of a 'current-buffer'"
  (interactive)
  (save-excursion
    (save-restriction
      (widen)
      (goto-char 60)
      (message (buffer-substring-no-properties (point-min) (point)))
      ))
  )

;; Usage
(copy-first-60)

;; without goto-char and point-min
(defun copy-first-60-min ()
  "Print first 60 chars of a 'current-buffer'"
  (interactive)
(save-excursion
  (save-restriction
    (widen)
    (message (buffer-substring-no-properties 1 60))
    )
  )
)

;; Usage
(copy-first-60-min)








