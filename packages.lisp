;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; file: packages.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-user)

(defpackage #:cl-cuneiform
  (:nicknames #:cuneiform)
  (:use :cl
        :cl-user
        :split-sequence
        :esrap)
  (:export #:*cl-cuneiform-version*
           #:*cuneiform-signs*
           #:*sign-readings*
           #:get-sign-for-reading
           #:parse-string
           #:parse-file
           #:replace-all))

(in-package :cl-cuneiform)

(defvar *cl-cuneiform-version* #.cl-cuneiform-asd:*cl-cuneiform-version*)

;; EOF
