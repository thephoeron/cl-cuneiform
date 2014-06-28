;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; maps.lisp

;;;; Copyright (c) 2014 "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-cuneiform)

(defvar *cuneiform-signs* (make-hash-table :test 'equalp :size 1000))

(let ((cuneiform-plist #.(with-open-file (f (merge-pathnames "cuneiform-plist.lisp-expr" (or *compile-file-pathname* *load-truename*)))
                           (read f))))
  (loop for (sign . plist) in cuneiform-plist
        do (setf (gethash sign *cuneiform-signs*) plist)))

(defvar *sign-readings* (make-hash-table :test 'equalp :size 10000))

(let ((sign-readings-plist #.(with-open-file (f (merge-pathnames "sign-readings-plist.lisp-expr" (or *compile-file-pathname* *load-truename*)))
                               (read f))))
  (loop for (reading . plist) in sign-readings-plist
        do (setf (gethash reading *sign-readings*) plist)))

(defun get-sign-for-reading (sign-reading)
  "Return the Unicode cuneiform character for a given symbol, sign-reading."
  (let* ((r-plist (gethash sign-reading *sign-readings*))
         (signlist (getf r-plist :signs)))
    (loop for sign in signlist collect (getf (gethash sign *cuneiform-signs*) :char))))

;; EOF
