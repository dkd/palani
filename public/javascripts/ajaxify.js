$(document).ready(function(){
	
	$("a.remote-link").livequery("click", function() {
		
		$.ajax({ method: "get", 
		 	 dataType: "script",
		 	 url: $(this).attr("href")
		});
		
		return false;
		
	});
	
	$('a.remote-link-delete').livequery("click", function() {
		
		$.ajax({ method: "post", 
			 dataType: "script", 
		 	 url: $(this).attr("href"),
			 data: '_method=delete',
			 type: 'post'
		});
	    
	 	return false; 
	
	});
	
	$("a.delete-image_attachment").livequery("click", function() {
		
		$(this).parent().remove();
		
		$.ajax({ 
			 method: "get", 
		 	 dataType: "script",
		 	 url: $(this).attr("href")
		});
		
		return false;
		
	});

});