;; Write a line graph version of the graph printing functions.
;; Note: all the definitions below are already in the manual. Only line graph part is the exercise

(defvar graph-symbol "*"
  "string used as symbol in graph.")

(defvar graph-blank " "
  "String used as blank in graph usually a blank space.
Note: graph-blank must be the same number of columns wide as
graph-symbol")


(defun column-of-graph (max-height actual-height &optional line)
  "Return a single column with max-height filled with 'graph-symbol'
to actual height"
  (let (insert-list
	(no-of-blanks
	 (- max-height actual-height)))

    
    (if line
	;; Line graph
	(progn
	  (while (> actual-height 1)
	    (setq insert-list (cons graph-blank insert-list))
	    (setq actual-height (1- actual-height)))
	  (setq insert-list (cons graph-symbol insert-list)))
      
      ;; Bar graph
      (while (> actual-height 0)
	(setq insert-list (cons graph-symbol insert-list))
	(setq actual-height (1- actual-height))))
    

    (while (> no-of-blanks 0)
      (setq insert-list (cons graph-blank insert-list))
      (setq no-of-blanks (1- no-of-blanks)))
    insert-list))

(column-of-graph 7 5 t)

(sit-for 0)

(defun graph-body-print (numbers-list &optional line)
  "Print graph body with every element of 'numbers-list' 
as height of single column. Every column is filled with
'graph-symbol' and 'graph-blank'"
  (let ((max-height
	 (apply 'max numbers-list))
	(from-position)
	(symbol-width (length graph-blank)))
    (while numbers-list
      (setq from-position (point))
      (insert-rectangle (column-of-graph
			 max-height
			 (car numbers-list)
			 line))
      (goto-char from-position)
      (forward-char symbol-width)
      (setq numbers-list (cdr numbers-list)))
    (forward-line max-height)
    (insert "\n")))

(defun graph-body-print-recursive (number-list &optional line)
    "Print graph body with every element of 'numbers-list' 
as height of single column. Every column is filled with
'graph-symbol' and 'graph-blank'"
  (let ((max-height
	 (apply 'max number-list))
	(symbol-width (length graph-blank)))
    (graph-body-print-recursive-internal
     number-list
     symbol-width
     max-height
     line)
    (forward-list max-height)
    (insert "\n")
    ))

(defun graph-body-print-recursive-internal (number-list
					    symbol-width
					    max-height
					    &optional line)
  "Print graph body a internal recursive defn that actually
uses insert-rectangle"
  (when number-list
      (setq from-position (point))
      (insert-rectangle (column-of-graph
			 max-height
			 (car number-list)
			 line))
      (goto-char from-position)
      (forward-char symbol-width)
      (sit-for 0)
      (graph-body-print-recursive-internal
       (cdr number-list)
       symbol-width
       max-height
       line)
      ))

;; Bar graph
(graph-body-print-recursive '(1 2 3 4 6 4 3 5 7 6 5 2 3))        *    
							     *   **   
							     *  ****  
							    *** ****  
							   ********* *
							  ************
							 *************



;; Line graph
(graph-body-print-recursive '(1 2 3 4 6 4 3 5 7 6 5 2 3) t)        *    
							       *    *   
							          *  *  
							      * *       
							     *   *     *
							    *         * 
							   *            
