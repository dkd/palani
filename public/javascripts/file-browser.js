Ext.onReady(function(){
	
    var win;
    var button = Ext.select('.choose-image_attachment');

    button.on('click', function(){
        // create the window on the first click and reuse on subsequent clicks
        if(!win){
            win = new Ext.Window({
                el:'upload-image_attachment',
                layout:'fit',
                width:500,
                height:300,
								closeAction: 'hide',
                plain: true,
								modal: true,
                items: new Ext.TabPanel({
                    el: 'browse-tabs',
                    autoTabs:true,
                    activeTab:0,
                    deferredRender:false,
                    border:false
                })
            });
        }

        win.show(this);
    });
});