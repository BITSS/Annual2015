	cd "/Users/haghish/Desktop"
	cap qui log c
	set linesize 70
	set more off
	qui log using example1, replace  
	
	
			/*
			Introduction to MarkDoc Stata Package
			=====================================
					
			Writing symbols
			---------------
			
			### Paragraph
			__MarkDoc__ Converts _smcl_ logfile to Markdown txt file 
			and allows the use of markdown symbols for adding text and 
			styling the logfile. If Pandoc (a third-party software) is
            installed, MarkDoc can also export the smclfile to other 
			document formats including PDF, Docx, TEX, HTML, XHTML, XML,
			EPUB, and several more formats. 
					
			This document provides an example about how to use MarkDoc
			to add text to your logfile. To do so, I will use the Auto2
			dataset which is automatically installed with Stata.
			*/ 
					
	sysuse auto2, clear	
	describe
	list in 1/3
	regress price mpg
	
			//#Other possibilities for writing text
			// this is the end of the first example. Notice that you can 
			// use two different sings for writing a comment in your 
			// do-file and MarkDoc can read them both.
			//to create a md file, you do not need to export the logfile
			//to any other format. md is the default format of markdoc.
			//however, you can also try to export it as HTML...

					
	qui log c
	
	/* Exporting in several formats */
	markdoc example1, replace 		/* exporting a markdown file */
	markdoc example1, replace export(html) keep
	markdoc example1, replace export(odt) keep 
	markdoc example1, replace export(txt) keep
	markdoc example1, replace export(epub) keep
	markdoc example1, replace export(docx) keep
