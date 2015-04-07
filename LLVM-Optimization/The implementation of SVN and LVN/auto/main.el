(TeX-add-style-hook "main"
 (lambda ()
    (TeX-add-symbols
     "HRule")
    (TeX-run-style-hooks
     "natbib"
     "sort&compress"
     "comma"
     "numbers"
     "square"
     "enumerate"
     "titlesec"
     ""
     "latex2e"
     "Thesis11"
     "Thesis"
     "oneside"
     "a4paper"
     "11pt"
     "./Chapters/Chapter1")))

