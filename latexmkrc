# ------------------------------------------------------------
# Remove the following files with the '-c' option
# ------------------------------------------------------------

$clean_ext = " #
	dvi 	#
	bbl 	# biblatex auxilary
	glg 	# makeindex
	glo 	# glossaries counting file
	gls 	# glossaries content file
	ist 	# glossaries style file
	nav 	# navigation bar hyperlinks
	run.xml # biber XML file
	sed 	# cleveref poorman
	snm 	# pgf (beamer)
	tdo 	# list of todonotes
	thm 	# ntheorem contents
	vrb 	# stuff related to beamer
";


# ------------------------------------------------------------
# Create potential files for the glossaries package
# ------------------------------------------------------------

add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
  if ( $silent ) {
    system "makeglossaries -q '$_[0]'";
  }
  else {
    system "makeglossaries '$_[0]'";
  };
}


# ------------------------------------------------------------
# Set previewer
# ------------------------------------------------------------

$pdf_previewer = "start evince";
