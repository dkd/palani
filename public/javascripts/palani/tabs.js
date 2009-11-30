/**
	* Create the tabs functionality needed for page and content element administration
	*
	*/

$(document).ready(function(){
	
	$(".simple_tabs li").livequery("click",function() {

		$(".simple_tabs > .current").removeClass("current");
		$(this).addClass("current");
		var index = $(this).parent().find("li").index($(this));

		$("div.tab_content.current").removeClass("current");
		$("div.tab_content:eq("+index+")").addClass("current");

	});
	
	$(".column_tabs li").livequery("click",function() {

		$(".column_tabs > .current").removeClass("current");
		$(this).addClass("current");
		var index = $(this).parent().find("li").index($(this));

		$("div.column_content.current").removeClass("current");
		$("div.column_content:eq("+index+")").addClass("current");

	});
	
});