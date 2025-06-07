# !/usr/bin/env perl
$latex            = 'lualatex -interaction=nonstopmode -synctex=1 %O %S';
$pdflatex         = $latex;
$bibtex           = 'bibtex %O %B';
$biber            = 'biber %O %B';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode         = 4;
$out_dir          = "./out";
$cleanup_mode     = 2;
