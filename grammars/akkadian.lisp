;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; file: grammars/akkadian.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-cuneiform)

;; Akkadian Parser Grammar

(defrule akkadian (and (* akkadian-block) (* blank-line))
  (:destructure (content blanks)
    (declare (ignore blanks))
    content))

;; EOF
