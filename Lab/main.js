var cycleCx;
window.onload = function() {
	init();
}

var init = function() {
	cycleCx = parseInt(document.getElementById('cycle').getAttribute('cx'))
	setInterval(moveElement,  1000/24);
}

var moveElement = function() {
	cycleCx > 1960 ? cycleCx = 0 : cycleCx += 5;
	document.getElementById('cycle').setAttribute('cx', cycleCx);
}




