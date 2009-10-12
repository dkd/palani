Ext.namespace('Ext.ux');

Ext.ux.Sortable = function(obj){

	var config = Ext.applyIf(obj,{
		container : document.body,
		className : null,
		tagName : 'li',
		handles : false,
		contextMenu : false,
		dragGroups : [
						'default'
					 ],	
		autoEnable : true,
		horizontal : false
	});

	this.ddGroups = {};

	Ext.applyIf(this,config);

	this._buildQueryString();

	this.addEvents (
		'serialise',
		'serialize',
		'enable',
		'disable',
		'enableElement',
		'disableElement'
	);

	this._createDragDrop();

	if(this.dragGroups.length > 1){
		this.addToDDGroup(this.dragGroups);
	} else {
		this.ddGroups[this.dragGroups]=true;
	}

	//automatically start the DD
	if(this.autoEnable){
		this.enable();
	}

	this.serialize = this.serialise;

}

Ext.extend(Ext.ux.Sortable,Ext.util.Observable, {
	/**
	 * Function creates the queryString for use in all functions
	 * @private
	 */
	_buildQueryString : function(){
		this.queryString = '';

		if(this.tagName){
			this.queryString += this.tagName.toLowerCase();
		}

		if(this.className){
			this.queryString += '.'+this.className;
		}
	},
	/**
	 * creates the DragZone and DropTarget
	 * @private
	 */
	_createDragDrop : function(){
		 this.dragZone = new Ext.dd.SortableDragZone(this.container, {ddGroup : this.dragGroups[0], scroll:false, containerScroll:true, queryString : this.queryString});
	     this.dropZone = new Ext.dd.SortableDropZone(this.container, {ddGroup : this.dragGroups[0], queryString : this.queryString, handles : this.handles, horizontal : this.horizontal});
	},
	/**
	 * Function gets the items in the list area
	 * @public
	 * @param {Boolean} flag Switch flag to fire event or not
	 * @returns {Array} An array ob DOM references to the nodes contained in the sortable list
	 */	
	serialise : function(flag){
		if(flag || flag == undefined){
			this.fireEvent('serialise', this);
			this.fireEvent('serialize', this);
		}
		return Ext.query(this.queryString,this.container);
	},
	/**
	 * Function enables DD on the container element
	 * is a long function to stop evaluation inside loops
	 * @public
	 */
	enable : function(){
		this.drags = this.serialise(false);

		var i = this.drags.length-1;

		if(this.handles && this.contextMenu){

			while(i >= 0){

	           Ext.dd.Registry.register(this.drags[i], {
	                   isHandle:false,
	                   handles : [
	                       'handle_' + this.drags[i].id
	                   ],
						ddGroups : this.ddGroups
	               }
	           );
	           Ext.fly('handle_' + this.drags[i].id).on('contextmenu', this.contextMenu, this, {preventDefault: true});
	       	   --i;
		   }
		} else if (this.handles) {
			while(i >= 0){
				Ext.dd.Registry.register(this.drags[i], {
		                   isHandle:false,
		                   handles : [
		                       'handle_' + this.drags[i].id
		                   ],
							ddGroups : this.ddGroups    
		               }
		           );
				--i;
			}
		} else if(this.contextMenu){
			while(i >= 0){ 
			 	Ext.dd.Registry.register(
					this.drags[i],
					{	
						ddGroups : this.ddGroups
					}	
				);
	         	Ext.fly(this.drags[i].id).on('contextmenu', this.contextMenu, this, {preventDefault: true});
				--i;
			}
		} else {
			while(i >= 0){
				Ext.dd.Registry.register(
					this.drags[i],
					{
						ddGroups : this.ddGroups
					}	
				);
				--i;
			}	
		}
		this.dropZone.unlock();
		this.dragZone.unlock();
		this.fireEvent('enable', this);
	},

	/**
	 * Disable all DD and remove contextMenu listeners
	 * @public
	 */
	disable : function(){
		this.drags = this.serialise(false);
		var i = this.drags.length-1;
		if(this.contextMenu){
			while(i >= 0){
		    	Ext.dd.Registry.unregister(this.drags[i]);
		        Ext.fly('handle_' + this.drags[i].id).un('contextmenu', this.contextMenu);
				--i;
		    }
		} else {
			while(i >= 0){
				 Ext.dd.Registry.unregister(this.drags[i]);
				--i;
			}
		} 
		this.dropZone.lock();
		this.dragZone.lock();
		this.fireEvent('disable', this);
	},
	/**
	 * Function enables a single Elements DD within the container
	 * @public
	 * @param {String} id The Id of the element you want to add to the DD list 
	 */
	enableElement :function(id){
		if(this.handles && this.contextMenu){

           Ext.dd.Registry.register(id, {
                   isHandle:false,
                   handles : [
                       'handle_' + id
                   ],
    				ddGroups : this.ddGroups
               }
           );
           Ext.fly('handle_' + id).on('contextmenu', this.contextMenu, this, {preventDefault: true});

		} else if (this.handles) {
			Ext.dd.Registry.register(id, {
                   isHandle:false,
                   handles : [
                       'handle_' + id
                   ],
   				   ddGroups : this.ddGroups    
               }
           );
		} else if(this.contextMenu){
			 Ext.dd.Registry.register(id,{
   				ddGroup : this.ddGroups
			});
	         Ext.fly('handle_' + id).un('contextmenu', this.contextMenu);
		} else {
			 Ext.dd.Registry.register(id,{
   				ddGroups : this.ddGroups
			});
		}
		this.fireEvent('enableElement', this);
	},
	/**
	 * Function disables a single Elements DD within the container
	 * @public
	 * @param {String} id The Id of the element you want to disable in the list 
	 */
	disableElement : function(id){
		Ext.dd.Registry.unregister(id);
        if(this.contextMenu){
        	Ext.fly('handle_' + id).un('contextmenu', this.contextMenu);
	 	}
		this.fireEvent('disableElement', this);
	},
	/**
	 * Function switches DD Group from the current one
	 * @public
	 * @param {String/Array} The DD Group(s) you want to swap the list from 
	 * @param {String/Array} The DD Group(s) you want to swap the list to
	 */
	swapDDGroup : function(from,to){

		this.removeFromDDGroup(from);
		this.addToDDGroup(to);		
		this.enable();
	},

	/**
	 * Function adds elements to a particular DD Group
	 * @public
	 * @param {String/Array} DD group(s) you want to add your list to
	 */
	addToDDGroup : function(groupName,enable){
		if(typeof groupName != 'string'){
			var i = groupName.length-1;
			while(i>=0){
				this.ddGroups[groupName[i]]=true;
				this.dragZone.addToGroup(groupName[i]);
				this.dropZone.addToGroup(groupName[i]);
				--i;
			}
		} else {
			this.ddGroups[groupName]=true;	
			this.dragZone.addToGroup(groupName);
			this.dropZone.addToGroup(groupName);
		}
		if(typeof enable !== 'undefined' || enable){
			this.enable();
		}
	},
	/**
	 * Function removes a list from a particular DD Group
	 * @public
	 * @param {String/Array} DD group(s) you want to remove your list from
	 */
	removeFromDDGroup : function(groupName, enable){
		if(typeof groupName != 'string'){
			var i = groupName.length-1;
			while(i>=0){
				this.ddGroups[groupName[i]]=false;
				this.dragZone.removeFromGroup(groupName[i]);
				this.dropZone.removeFromGroup(groupName[i]);
				--i;
			}
		} else {
			this.ddGroups[groupName]=false;
			this.dragZone.removeFromGroup(groupName);
			this.dropZone.removeFromGroup(groupName);
		}
		if(typeof enable !== 'undefined' || enable){
			this.enable();
		}
	}
});

Ext.dd.SortableDragZone = function(el, config){
	Ext.dd.DragZone.superclass.constructor.call(this, el, config);
};

Ext.extend(Ext.dd.SortableDragZone, Ext.dd.DragZone, {

	onInitDrag : function(x, y){
		var dragged = this.dragData.ddel.cloneNode(true);
		dragged.id='';

		if(Ext.isIE){ //IE fix for checkbox and radio
			var array_cb = Ext.fly(this.dragData.ddel).select('input[type="checkbox"]');
			var array_rb = Ext.fly(this.dragData.ddel).select('input[type="radio"]');
			var i = 0;
			Ext.fly(dragged).select('input[type="checkbox"]').each(function() {
				this.dom.defaultChecked = array_cb.elements[i].checked;
				i++;
			});
			i = 0;
			Ext.fly(dragged).select('input[type="radio"]').each(function() {
				this.dom.defaultChecked = array_rb.elements[i].checked;
				i++;
			});
		}

		this.proxy.update(dragged);
		this.onStartDrag(x, y);
		this.dragData.ddel.style.visibility='hidden';
		return true;
	},

    afterRepair : function(){               
        this.dragData.ddel.style.visibility='';
        this.dragging = false;
    },

    getRepairXY : function(e){
        //uncomment this to show animation
        return Ext.Element.fly(this.dragData.ddel).getXY(); 
    },

    getNodeData : function(e){
        e = Ext.EventObject.setEvent(e);
        var target = e.getTarget(this.queryString);
        if(target){
            this.dragData.ddel = target.parentNode; // the img element
            this.dragData.single = true;
            return this.dragData;
        }
        return false;
    },
    onEndDrag : function(data, e){ }
});

Ext.dd.SortableDropZone = function(el, config){
    Ext.dd.DropZone.superclass.constructor.call(this, el, config);
};

Ext.extend(Ext.dd.SortableDropZone, Ext.dd.DropZone, {

	notifyEnter : function(source, e, data){
		this.srcEl = Ext.get(data.ddel);
		if(this._testDDGroup()){    

		    if(this.srcEl !== null){
		        if(this.srcEl.dom.parentNode !== this.el.dom){
		            if(!Ext.query(this.queryString,this.el).length > 0 && this.srcEl.is(this.queryString)){
		                this.srcEl.appendTo(this.el);
		            }
		        }
		        //add DD ok class to proxy            
		        if(this.overClass){
		            this.el.addClass(this.overClass);
		        }
		        return this.dropAllowed;
		    }    
		}
	},

	onContainerOver : function(dd, e, data){
    	if(this._testDDGroup()){
			return this.dropAllowed;
		}	
	},

	notifyOver : function(dd, e, data){
		if(this._testDDGroup()){    
	    	var x;

		    var n = this.getTargetFromEvent(e);

		    if(!n){

		        if(this.lastOverNode){
		            this.onNodeOut(this.lastOverNode, dd, e, data);
		            this.lastOverNode = null;
		        }
		        return this.onContainerOver(dd, e, data);
		    }
		    if(this.lastOverNode != n){
		        if(this.lastOverNode){
		            this.onNodeOut(this.lastOverNode, dd, e, data);
		        }
		        this.onNodeEnter(n, dd, e, data);
		        this.lastOverNode = n;
		    }
		    return this.onNodeOver(n, dd, e, data);
		}
	},


	onNodeOver : function(n, dd, e, data){
		if(this._testDDGroup()){
			if(this.horizonatal) {
				var x = e.getPageX();
				if (x < this.lastX) {
					this.goingPrevious = true;
				} else if (x > this.lastX) {
					this.goingPrevious = false;
				}
				this.lastX = x;
			} else {
				var y = e.getPageY();
				if (y < this.lastY) {
					this.goingPrevious = true;
				} else if (y > this.lastY) {
					this.goingPrevious = false;
				}
				this.lastY = y;
			}
			var destEl = Ext.get(n.ddel);

			if((Ext.isIE)&&(this.srcEl !== null)){ //IE fix for checkbox and radio
				this.srcEl.select('input[type="checkbox"]').each(function() {
					this.dom.defaultChecked = this.dom.checked;
				});
				this.srcEl.select('input[type="radio"]').each(function() {
					this.dom.defaultChecked = this.dom.checked;
				});
			}

			if (this.goingPrevious) {
				this.srcEl.insertBefore(destEl);
			} else {
				this.srcEl.insertAfter(destEl);
			}

			return this.dropAllowed;
		} else {
			return this.dropNotAllowed;
		}
	},

	notifyDrop : function(dd, e, data){
	    if(this._testDDGroup){    
			if(this.srcEl !== null){
		        this.srcEl.setStyle('visibility','');            
		        // refresh the drag drop manager
		        Ext.dd.DragDropMgr.refreshCache(this.groupName);
		    }
			return true;
		}    
	},
	_testDDGroup : function(){
		var groupTest = Ext.dd.Registry.getTarget(this.srcEl.id).ddGroups;
		var result = false;

		for(this.groups in groupTest){
			if(groupTest[this.groups]){
				result=true;	
			}
		}
		return result;
	}
});


//Ext override to stop error when unloading a page
Ext.dd.DragDropMgr._remove = function(oDD) {
	if(oDD){
	    for (var g in oDD.groups) {
	       if(this.ids[g]){
				if (g && this.ids[g][oDD.id]) {
	            	delete this.ids[g][oDD.id];
	        	}
			}
	    }
	    delete this.handleIds[oDD.id];
	}
}