;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; file: parser.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-cuneiform)

;;; Parsing Interface

(defun parse-string (str grammar)
  "Parse a string using the provided grammar. Valid grammars are 'ASCII, 'LATIN, 'SUMERIAN, and 'AKKADIAN."
  (parse grammar str :junk-allowed t))

(defun parse-file (pathname grammar)
  "Parse a text file using the provided grammar. Valid grammars are 'ASCII, 'LATIN, 'SUMERIAN, and 'AKKADIAN."
  (parse-string (slurp-file pathname) grammar))

;; EOF
