;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; cl-cuneiform.asd

;;;; Copyright (c) 2014 "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-user)

(defpackage cl-cuneiform-asd
  (:use :cl :asdf)
  (:export #:*cl-cuneiform-version*))

(in-package :cl-cuneiform-asd)

(defvar *cl-cuneiform-version* "1.0.0")

(defsystem #:cl-cuneiform
  :serial t
  :description ""
  :version #.*cl-cuneiform-version*
  :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
  :license "MIT"
  :depends-on (:split-sequence)
  :components ((:file "packages")
               (:file "maps")
               (:file "parser")
               (:file "utils")
               (:file "cl-cuneiform")))
;; EOF
