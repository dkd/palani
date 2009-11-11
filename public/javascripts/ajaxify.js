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
	
	$("a.choose-image_attachment").livequery("click", function() {
		
		alert(test);
		
		if(!win) {
			win = new Ext.Window({
			                applyTo:'hello-win',
			                layout:'fit',
			                width:500,
			                height:300,
			                closeAction:'hide',
			                plain: true,
	
			                items: new Ext.TabPanel({
			                    applyTo: 'hello-tabs',
			                    autoTabs:true,
			                    activeTab:0,
			                    deferredRender:false,
			                    border:false
			                }),
	
			                buttons: [{
			                    text:'Submit',
			                    disabled:true
			                },{
			                    text: 'Close',
			                    handler: function(){
			                        win.hide();
			                    }
			                }]
			            });
		}
		
		win.show();
		
		return false;
	});

});