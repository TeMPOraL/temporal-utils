(in-package #:temporal-utils)

;;; by verec
;;; stolen from http://paste.lisp.org/display/4744#1
(defmacro pprint-macroexpand (form)
  "Pretty prints the macro expansion of `FORM'."
  `(let* ((exp1 (macroexpand-1 ',form))
          (exp (macroexpand exp1))
          (*print-circle* nil))
     (cond ((equal exp exp1)
            (format t "~&Macro expansion:")
            (pprint exp))
           (t (format t "~&First step of expansion:")
              (pprint exp1)
              (format t "~%~%Final expansion:")
              (pprint exp)))
     (format t "~%~%")
     (values)))
