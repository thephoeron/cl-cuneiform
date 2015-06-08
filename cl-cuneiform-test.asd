;;;; file: cl-cuneiform-test.asd

(in-package :cl-user)

(defpackage cl-cuneiform-test-asd
  (:use :cl :asdf))

(in-package :cl-cuneiform-test-asd)

(defsystem #:cl-cuneiform-test
  :serial t
  :version #.cl-cuneiform-asd:*cl-cuneiform-version*
  :description "Test System for CL-CUNEIFORM."
  :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
  :license "MIT"
  :depends-on (#:cl-cuneiform
               #:prove)
  :components ((:module "t"
                :components
                ((:test-file "cl-cuneiform"))))
  :defsystem-depends-on (prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))

;; EOF
