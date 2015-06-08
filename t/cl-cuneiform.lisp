;;;; file: t/cl-cuneiform.lisp

(in-package :cl-user)

(defpackage :cl-cuneiform-test
  (:use :cl :cl-cuneiform :prove))

(in-package :cl-cuneiform-test)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-cuneiform)' in your Lisp.

(plan 1)

(deftest sanity-check
  (is (+ 1 1)
      2
      "Sane Lisp system."))

(run-test-all)

;; EOF
