$(document).ready(function(){
	
		var win;
		var element_position;
	
		$("#image_browser ul li a").livequery('click', function() {

			if($("#image_attachments fieldset:eq("+element_position+") legend").length==0) {
				$("#image_attachments fieldset:eq("+element_position+")").append("<legend></legend>");
			}
			if($("#image_attachments fieldset:eq("+element_position+") img").length > 0) {
				$("#image_attachments fieldset:eq("+element_position+") img").remove();
			}

			$("#image_attachments fieldset:eq("+element_position+") legend").html($(this).find("img:first").attr("alt"));	
			$(this).find("img:first").clone().prependTo("#image_attachments fieldset:eq("+element_position+")");

			$("#image_attachments fieldset:eq("+element_position+") .image_id").val($(this).find("img:first").attr("title"));

			win.hide();

		});
		
		$(".choose-image_attachment").livequery('click', function(){
			
			  if(!win){
            win = new Ext.Window({
                applyTo:'upload-image_attachment',
                layout:'fit',
                width:600,
                height:500,
								closeAction: 'hide',
                plain: true,
								modal: true,
								id: 'test',
                items: new Ext.TabPanel({
                    applyTo: 'browse-tabs',
                    autoTabs:true,
                    activeTab:0,
                    deferredRender:false,
                    border:false
                })
            });
        }

				element_position = $(this).parent().parent().find("fieldset").index($(this).parent());
				win.show();
    });

});