;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; parser.lisp

;;;; Copyright (c) 2014 "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-cuneiform)

(defun tokenize-cuneiform (str)
  "Return a 2d list of cuneiform signs parsed from a string of cuneiform text."
  (let ((wordlist (split-sequence #\Space str)))
    (loop for word in wordlist
          collect (split-sequence #\- word))))

;; 8/28/2014
;; Hmmm... I don't remember what I was doing here, when I left it unfinished...
;; Will probably have to scrap it and start over---doesn't make any sense.
(defun ascii->latin (str)
  "Returns an upcase extended Latin unicode string with the appropriate transformations from ASCII-representation of Cuneiform signs."
  (let ((latin-string (format nil "~:@(~A~)")))
    (setf latin-string (replace-all latin-string "x" "×" :test #'char=))
    (setf latin-string (replace-all latin-string "SH" "Š"))
    (setf latin-string (replace-all latin-string "NG" "Ŋ"))
    (setf latin-string (replace-all latin-string "H" "Ḫ"))
    (setf latin-string (replace-all latin-string "0" "₀"))
    (setf latin-string (replace-all latin-string "1" "₁"))
    (setf latin-string (replace-all latin-string "2" "₂"))
    (setf latin-string (replace-all latin-string "3" "₃"))
    (setf latin-string (replace-all latin-string "4" "₄"))
    (setf latin-string (replace-all latin-string "5" "₅"))
    (setf latin-string (replace-all latin-string "6" "₆"))
    (setf latin-string (replace-all latin-string "7" "₇"))
    (setf latin-string (replace-all latin-string "8" "₈"))
    (setf latin-string (replace-all latin-string "9" "₉"))
    (setf latin-string (replace-all latin-string "_" "."))
    (setf latin-string (replace-all latin-string "×₃" "×3"))
    (setf latin-string (replace-all latin-string "×₄" "×4"))
    latin-string))

;; EOF
