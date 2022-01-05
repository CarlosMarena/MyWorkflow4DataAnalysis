/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
File:				0_run.do
Author: 			Carlos Marena 
Email:				carlosmarena1995@gmail.com
Date: 				##/##/20##
Short Description:  This do-file .... 
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

////////////////////////////////////////////////////////////////////////////////
* 1. Set options (uncomment if needed)

// Download raw data (0 for no; 1 for yes)
global downloads 1

// Build dataset used in analysis (0 for no; 1 for yes)
// global build_data 0

// Use restricted data (0 for no; 1 for yes)
// global restricted_access 0 

// Run very slow parts of the analysis code 
// global slow_code 0

// Deprecated code (keep this set to 0)
// global deprecated 0

////////////////////////////////////////////////////////////////////////////////
* 2. Use included packages 
cap adopath - PERSONAL 
cap adopath - PLUS 
cap adopath - SITE
cap adopath - OLDPLACE 
adopath + "stata_packages"
net set ado "stata_packages"

// Download user written packages 
if $downloads == 1{
	// scc install something , replace 
	ssc install blindschemes, replace 
}
