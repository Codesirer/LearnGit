window.onload = function(evt) {
	init();
}


/*
var body = document.body;

body.addEventListener("click", function(e){
  console.log(this);
}, false);

*/
var init = function() {

	var divOut = document.getElementById('test');
	var divIn  = document.getElementsByClassName('test-inner')[0];
	
	var foo = function() {
		console.log("catch");
	}

	divIn.addEventListener("click", foo, true);
	divIn.removeEventListener("click", foo, true);
}



