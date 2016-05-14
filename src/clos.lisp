(in-package #:temporal-utils)

;; (defmacro standard-slots (&rest slots)
;;   (mapcar (lambda (slot)
;;             `(,slot :initform nil
;;                     :initarg ,(make-keyword (string slot))
;;                     :accessor ,slot)) slots))
;; ;;; code-walk
;; ;;; foreach slot, if:
;; ;;; - (:standard-slots &rest names) --> transform each into default name+initform+initarg+accessor and splice in
;; ;;; - (:read-only-slots &rest names) --> transform each into default name+initform+initarg+reader and splice in
;; ;;; - (anything else) --> leave as it is

;; (defun dfcls (name parents slots &rest rest)
;;   `(defclass ,name ,parents
;;      ,(code-walk slots)
;;      ,@rest))

