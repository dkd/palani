// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){

	// when an ajax request starts, show spinner
	$().ajaxStart(function(){
    	$("#spinner").show();
	});

	// when an ajax request complets, hide spinner    
	$().ajaxStop(function(){
    	$("#spinner").hide();
	});

});