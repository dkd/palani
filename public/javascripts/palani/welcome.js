function setTime() {

	var now = new Date();
			
	var minutes = now.getMinutes();
	var hours = now.getHours();
			
	var day = now.getDate();
	var month = now.getMonth() + 1;
	var year = now.getYear() + 1900;
			
	if( hours < 10 )
		hours = "0" + hours;
			
	if( minutes < 10 )
		minutes = "0" + minutes;

	document.getElementById('time').innerHTML = hours + ':' + minutes + ' - ' + day + '.' + month + '.' + year;

}

function centerBox() {
	
	var height;
	
	if(document.body.clientHeight)
		height = document.body.clientHeight;
	else
		height = document.documentElement.clientHeight;
						
	if( height <= 200 )
		return;
			
	var padding = (height-200)/2;
			
	document.getElementById("main").style.padding = padding+"px 0 0 0";
			
}
		
window.onload = function() {
		
	setTime();
	centerBox();
	setInterval( setTime, 1000 );
		
}