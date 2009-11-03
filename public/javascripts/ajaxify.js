$("a.remote-link").live("click", function() {
	
	$.ajax({ method: "get", 
	 	 dataType: "script",
	 	 url: $(this).attr("href")
	});
	
	return false;
	
});