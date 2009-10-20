/**
	* Create the tabs functionality
	*
	*/

$(document).ready(function(){
	
	$("#show_general_options").click(function() {
		
		$(".simple_tabs > .current").removeClass("current");
		$("#show_general_options").addClass("current");
		
		$("#edit_page > form > div.current").removeClass("current");
		$("#general_options").addClass("current");
		
	});
	
	$("#show_type_settings").click(function() {
		
		$(".simple_tabs > .current").removeClass("current");
		$("#show_type_settings").addClass("current");
		
		$("#edit_page > form > div.current").removeClass("current");
		$("#type_settings").addClass("current");
		
	});
	
	$("#show_template").click(function() {
		
		$(".simple_tabs > .current").removeClass("current");
		$("#show_template").addClass("current");
		
		$("#edit_page > form > div.current").removeClass("current");
		$("#template").addClass("current");
		
	});
	
	$("#show_meta_informations").click(function() {
		
		$(".simple_tabs > .current").removeClass("current");
		$("#show_meta_informations").addClass("current");
		
		$("#edit_page > form > div.current").removeClass("current");
		$("#meta_informations").addClass("current")
		
	});
	
	$("#show_access").click(function() {
		
		$(".simple_tabs > .current").removeClass("current");
		$("#show_access").addClass("current");
		
		$("#edit_page > form > div.current").removeClass("current");
		$("#access").addClass("current");
		
	});
	
});