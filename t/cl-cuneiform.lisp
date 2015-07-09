;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-CUNEIFORM-TEST; Base: 10 -*-
;;;; file: t/cl-cuneiform.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-user)

(defpackage :cl-cuneiform-test
  (:use :cl :cl-cuneiform :prove))

(in-package :cl-cuneiform-test)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-cuneiform)' in your Lisp.

(plan 3)

(deftest sanity-check
  (pass "PROVE is loaded and ready to go.")
  (is (+ 1 1)
      2
      "Addition: (+ 1 1) => 2.")
  (is (* 2 2)
      4
      "Multiplication: (* 2 2) => 4.")
  (is (length "four")
      4
      "Length: (length \"four\") => 4.")
  (is (replace-all "Hello, world!" "world" "multiverse")
      "Hello, multiverse!"
      "Replace-All => \"Hello, multiverse!\"."))

(deftest sign-readings
  (is (list (code-char #x12000))
      (get-sign-for-reading "a")
      "'A' results in character #\\U+12000")
  (is (list (code-char #x12009))
      (get-sign-for-reading "a2")
      "'A2' results in character #\\U+12009")
  (is (list (code-char #x1227F))
      (get-sign-for-reading "a3")
      "'A3' results in character #\\U+1227F"))

(with-open-file (o "cuneiform.txt" :direction :output :if-does-not-exist :create)
  (format o "Does this cuneiform text parse?~%~%A-BA NAGI NU~%"))

(deftest cuneiform-parser
  (is (parse-string "sumerian" 'sumerian)
      nil
      "Parse Sumerian text.")
  (is (parse-string "akkadian" 'akkadian)
      nil
      "Parse Akkadian text.")
  (is (parse-string "latin" 'latin)
      nil
      "Parse Latin representation of Cuneiform text.")
  (is (parse-string "ascii" 'ascii)
      nil
      "Parse ASCII representation of Cuneiform text.")
  (is (parse-file "cuneiform.txt" 'sumerian)
      nil
      "Parse Cuneiform text from file."))

(run-test-all)

;; EOF
