;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; maps.lisp

;;;; Copyright (c) 2014 "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-cuneiform)

(defvar *cuneiform-signs* (make-hash-table :test 'equalp :size 1000))

(let ((cuneiform-plist #.(with-open-file (f (merge-pathnames "cuneiform-plist.lisp-expr" (or *compile-file-pathname* *load-truename*)))
                           (read f))))
  (loop for (key . value) in cuneiform-plist
        do (setf (gethash key *cuneiform-signs*) value)))

(defvar *sign-readings* (make-hash-table :test 'equalp :size 10000))

;; EOF
