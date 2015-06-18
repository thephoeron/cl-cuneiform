;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; file: utils.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-cuneiform)

;; From Common Lisp Cookbook.  Need to find an optimized implementation of this.
(defun replace-all (string part replacement &key (test #'char-equal))
  "Returns a new string in which all the occurences of the part is replaced with replacement."
  (with-output-to-string (out)
    (loop with part-length = (length part)
          for old-pos = 0 then (+ pos part-length)
          for pos = (search part string
                            :start2 old-pos
                            :test test)
          do (write-string string out
                           :start old-pos
                           :end (or pos (length string)))
          when pos do (write-string replacement out)
          while pos)))

;; EOF
