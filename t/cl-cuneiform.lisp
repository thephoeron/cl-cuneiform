;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM; Base: 10 -*-
;;;; file: t/cl-cuneiform.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-user)

(defpackage :cl-cuneiform-test
  (:use :cl :cl-cuneiform :prove))

(in-package :cl-cuneiform-test)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-cuneiform)' in your Lisp.

(plan 2)

(deftest sanity-check
  (is (+ 1 1)
      2
      "Sane Lisp system.")
  (is (list (code-char #x12009))
      (cl-cuneiform::get-sign-for-reading "a2")
      "Reading: A2 results in character 𒀉"))

(run-test-all)

;; EOF
