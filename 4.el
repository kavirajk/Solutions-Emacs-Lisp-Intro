;; Write your own ‘simplified-end-of-buffer’ function definition; then
;; test it to see whether it works.

(defun simplified-end-of-buffer()
  "A simple function that moves point
of Current buffer to end of the buffer"
  (interactive)
  (goto-char (point-max))
  )


;; Use ‘if’ and ‘get-buffer’ to write a function that prints a message
;; telling you whether a buffer exists.

(defun get-buffer-p (buffer)
  "Test whether BUFFER exists"
  (interactive "BBuffer: ")
  (if (get-buffer buffer)
      (message "Buffer %s exits" buffer)
    (message "Buffer %s doesn't exist" buffer)
    )
  )

;; Usage
(get-buffer-p "*scratchi*")
(get-buffer-p "*kaviraj*")


;; Using ‘find-tag’, find the source for the ‘copy-to-buffer’
;; function.

(find-tag 'copy-to-buffer) ;; Make sure TAG file already created

