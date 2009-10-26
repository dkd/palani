/**
	* Create the tabs functionality needed for page administration
	*
	*/

$(document).ready(function(){
	
	$("#edit_page form:first ul li").click(function() {
		
		$(".simple_tabs > .current").removeClass("current");
		$(this).addClass("current");
		var index = $(this).parent().find("li").index($(this));

		$("#edit_page > form > div.current").removeClass("current");
		$("#edit_page form:first div.tab_content:eq("+index+")").addClass("current");
		
	});
	
	if($("#page_shortcut_mode")) {
		
		$("#page_shortcut_mode").bind("change", function() {
			
			if( $("#page_shortcut_mode").val()=="first_subpage" || $("#page_shortcut_mode").val()=="random_subpage" ) {
				$("#type_settings fieldset div").slice(1,3).hide();
			}
			
			if( $("#page_shortcut_mode").val()=="internal_page" ) {
				$("#type_settings fieldset div").slice(1,2).hide();
				$("#type_settings fieldset div:last").show();
			}
			
			if( $("#page_shortcut_mode").val()=="external_page" ) {
				$("#type_settings fieldset div:last").hide();
				$("#type_settings fieldset div").slice(1,2).show();
			}
			
		});
		
		$("#type_settings fieldset div").slice(1,3).hide();
		
		if( $("#page_shortcut_mode").val()=="internal_page" ) {
			$("#type_settings fieldset div:last").show();
		}
		
		if( $("#page_shortcut_mode").val()=="external_page" ) {
			$("#type_settings fieldset div").slice(1,2).show();
		}
		
	}
	
});