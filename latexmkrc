#`-file-line-error` is similar to `--interaction nonstopmode`, but shows the concrete line number
$pdflatex = 'xelatex -shell-escape -file-line-error -interaction=nonstopmode -quiet -synctex=1 %O %S';
$pdf_previewer = 'sioyek';

#automatically call lualatex/pdflatex (instead of latex)
$pdf_mode = 1;

add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );

sub makeglossaries {
    my ($name, $path) = fileparse( $$Psource );
    return system "makeglossaries -d '$path' '$name'";
}

# Compile the nomenclature (package 'nomencl')
add_cus_dep( 'nlo', 'nls', 0, 'makenlo2nls' );
sub makenlo2nls {
    system( "makeindex -s nomencl.ist -o \"$_[0].nls\" \"$_[0].nlo\"" );
}

# enable deletion of *.bbl when calling "latexmk -c"
$bibtex_use = 2;

#remove more files than in the default configuration
@generated_exts = qw(brf acn acr alg aux code ist fls glg glo gz gls glsdefs idx ind lof lot out thm toc tpt wrt run.xml synctex  synctex.gz mw bcf synctex(busy));
$clean_ext .= ' %R.ist %R.xdy';

