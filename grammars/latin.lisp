;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; file: grammars/latin.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-cuneiform)

;; Latin Cuneiform Representation Parser Grammar

(defrule latin (and (* latin-block) (* blank-line))
  (:destructure (content blanks)
    (declare (ignore blanks))
    content))

;; EOF
