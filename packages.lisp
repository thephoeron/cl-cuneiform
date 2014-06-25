;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; packages.lisp

;;;; Copyright (c) 2014 "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-user)

(defpackage #:cl-cuneiform
  (:nicknames #:cuneiform)
  (:use :cl :cl-user :split-sequence)
  (:export #:*cl-cuneiform-version*))

(in-package :cl-cuneiform)

(defvar *cl-cuneiform-version* #.cl-cuneiform-asd:*cl-cuneiform-version*)

;; EOF
