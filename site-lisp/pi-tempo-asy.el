;;: -*- emacs-lisp -*-
;;; pi-tempo-abbrev-asy.el
;;; Author: Philippe Ivaldi
;; Last modified: Fri Nov 20 00:06:45 CET 2009

(require 'pi-tempo)

;; *===============================================*
;; *..............tempo for asy-mode...............*
;; *===============================================*

(eval-after-load "asy-mode"
  '(progn
     (pi-tempo-add
      '(asy-mode-hook)    ;; List of modes where the following table will use.
      'tempo-asy-table    ;; Table name (* MUST BE UNIQUE *).
      'tempo-asy-tagslist ;; Name of the variable where the tag list should be added.
      '(("intp"  ("intersectionpoint(" p ", " p ")"))
        ("intt"  ("intersectiontime(" p ", " p ")"))
        ("rot"  ("rotate(" p ")*"))
        ("shi"  ("shift(" p ")*"))
        ("sca"  ("scale(" p ")*"))
        ("xsc"  ("xscale(" p ")*"))
        ("ysc"  ("yscale(" p ")*"))
        ("zsc"  ("zscale(" p ")*"))
        ("len" ("length(" p ")"))
        ("if"  (& >"if(" p ") {"n>
                  p n >
                  "}"> %))
        ("else"  (> "else {" n>
                   p n>
                   "}"> %))
        ("ife"  (& >"if (" p ") {" n>
                   p n>
                   "}" > n>
                   "else {" n>
                   p n>
                   "}" > %))
        ("for"  (& >"for (" p "; " p "; " p ") {" n>
                   p n >
                   "}"> %))
        ("fori"  (& >"for (int " (p "Variable: " var) "=0; " (s var) " < " p "; ++" (s var) ") {" n>
                   p n >
                   "}"> %))
        ("whi"  (& >"while(" p ") {" n>
                   p n>
                   "}"> %))
        ("do"  (& >"do {" n>
                   p n>
                   "} while(" p ")"> %))
        ;; `Place_here_your_abbreviations_for_asy-mode'
        ))))
