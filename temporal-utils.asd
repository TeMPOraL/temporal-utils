;;; temporal-utils.asd

(asdf:defsystem #:temporal-utils
  :version "0.1.0"
  :description "Some Lisp utilities of mine."
  :author "Jacek \"TeMPOraL\" Złydach <temporal.pl@gmail.com>"

  :license "MIT"

  :serial t
  :components
  ((:module "src"
            :components ((:file "package")
                         (:file "macros")))))
