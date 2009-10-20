/**
	* Create the tabs functionality
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
	
});