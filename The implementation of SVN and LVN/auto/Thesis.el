(TeX-add-style-hook "Thesis"
 (lambda ()
    (LaTeX-add-environments
     "example"
     "theorem"
     "corollary"
     "lemma"
     "proposition"
     "axiom"
     "definition"
     "remark"
     "abstract")
    (TeX-add-symbols
     '("dedicatory" 1)
     '("acknowledgements" 1)
     '("listofnomenclature" 2)
     '("listofconstants" 2)
     '("listofsymbols" 2)
     '("addtotoc" 1)
     '("keywords" 1)
     '("subject" 1)
     '("FACULTY" 1)
     '("faculty" 1)
     '("GROUP" 1)
     '("group" 1)
     '("DEPARTMENT" 1)
     '("department" 1)
     '("UNIVERSITY" 1)
     '("university" 1)
     '("addresses" 1)
     '("authors" 1)
     '("degree" 1)
     '("examiner" 1)
     '("thesistitle" 1)
     '("supervisor" 1)
     '("aref" 1)
     '("sref" 1)
     '("cref" 1)
     '("eref" 1)
     '("tref" 1)
     '("fref" 1)
     '("btypeout" 1)
     '("Declaration" 1)
     "bhrule"
     "listsymbolname"
     "listconstants"
     "listnomenclature"
     "baseclass"
     "today"
     "cleardoublepage"
     "supname"
     "ttitle"
     "examname"
     "degreename"
     "authornames"
     "addressnames"
     "univname"
     "UNIVNAME"
     "deptname"
     "DEPTNAME"
     "groupname"
     "GROUPNAME"
     "facname"
     "FACNAME"
     "subjectname"
     "keywordnames"
     "footnotesize"
     "footnoterule"
     "thanks"
     "maketitle"
     "title"
     "author"
     "date"
     "and")
    (TeX-run-style-hooks
     "longtable"
     "hyperref"
     "breaklinks=true"
     "unicode"
     "pdfstartview={FitV}"
     "urlcolor={red}"
     "citecolor={blue}"
     "linkcolor={blue}"
     "colorlinks"
     "hypertexnames=false"
     "bookmarksnumbered=true"
     "bookmarksopenlevel=0"
     "bookmarksopen=true"
     "bookmarks=true"
     "pdfpagemode={UseOutlines}"
     "listings"
     "rotating"
     "booktabs"
     "subfigure"
     "scriptsize"
     "epstopdf"
     "graphicx"
     "caption"
     "sc"
     "small"
     "centerlast"
     "xspace"
     "amsthm"
     "amscd"
     "amssymb"
     "amsfonts"
     "amsmath"
     "fancyhdr"
     "vmargin"
     "setspace"
     "")))

