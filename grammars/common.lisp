;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; file: grammars/common.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-cuneiform)

;;; Common Parser Grammar Rules

;; Whitespace

(defrule eof (! character)
  (:constant "<eof>"))

(defrule space-char (or #\Space #\Tab)
  (:text t))

(defrule newline (or #\linefeed (and #\return #\linefeed))
  (:text t))

(defrule space (* space-char)
  (:text t))

(defrule space-newline (and space (? (and newline space)))
  (:text t))

(defrule blank-line (and space newline)
  (:constant "
"))

(defrule nonindent-space (or "   " "  " " " "")
  (:text t))

(defrule line-break (and "  " normal-endline)
  (:constant '(:line-break)))

(defrule normal-endline (and space newline (! blank-line))
  (:text t))

(defrule endline (or line-break terminal-endline normal-endline))

(defrule terminal-endline (and space newline eof)
  (:text t))

;; EOF
