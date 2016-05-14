(in-package #:temporal-utils)

;;; Types

;;; Predicates

(defun all-number-p (&rest values)
  "Function that determines if all `VALUES' are numbers.
Does NOT short-circuit (obviously)."
  (reduce (lambda (a b) (and a b)) (mapcar #'numberp values)))

(defmacro all-number-p* (&rest forms)
  "Macro version of `ALL-NUMBER-P' that short-circuits via AND,
so that each of the `FORMS' is evaluated once and only if all
previous forms were numberp."
  `(and ,@(mapcar (lambda (form) `(numberp ,form)) forms)))
