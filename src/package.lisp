;;; package.lisp

(defpackage #:temporal-utils
  (:nicknames #:trc.u)
  (:use #:cl)
  (:export #:pprint-macroexpand
           
           #:all-number-p
           #:all-number-p*))
