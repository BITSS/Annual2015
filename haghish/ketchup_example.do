	cd "/Users/haghish/Desktop"
	cap qui log c
	set linesize 80
	set more off
	qui log using example1, replace  
	
	
			/*
			Introduction to Ketchup Package
			=====================================
					
			Writing symbols
			---------------
			
			### Paragraph
			__Ketchup__ Converts _smcl_ logfile to html file 
			and allows the use of markdown symbols for adding text and 
			styling the logfile.  
					
			This document provides an example about how to use Ketchup
			to add text to your logfile. To do so, I will use the Auto2
			dataset which is automatically installed with Stata.
			*/ 
					
	sysuse auto2, clear	
	describe
	list in 1/3
	regress price mpg
	
	hist price, title("Price Histogram") 
	qui graph export graph2price.png, replace 
	img graph2price.png, w(230) h(170) 
	img graph2price.png, w(230) h(170) 
	img graph2price.png, w(230) h(170)  
					
	qui log c
	
	/* Exporting in several formats */
	ketchup example1, replace export(pdf) date title("Ketchup Package") ///
	author("E. F. Haghish")  affiliation("University of Freiburg, Germany") ///
	style("elegant") 

