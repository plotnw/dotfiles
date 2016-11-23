var pw, ph;
var main_canvas,main_context;
var curX = 0,
curY = 0, 
size = 1,
dotCount = 500,
lineWidth = .1,
neigborDistance = 45;
w = 700, h = 700,
speedMax = 1,
dotArray = [];
var mode = 'neighbor';
// var mode = 'default';
var urlParams = {};
var logCount = 0;
//

function setCanvas(){

   var main_canvas = document.getElementById('organism');

   pw = main_canvas.parentNode.clientWidth;
   ph = main_canvas.parentNode.clientHeight;
   
   main_canvas.width = main_canvas.height = $( window ).height()/1.5;
   
   main_canvas.style.left = (pw-main_canvas.width)/2 + "px";
   main_canvas.style.top = main_canvas.width/8 + "px";

}

window.onresize = function(){
	setCanvas();
}


start();
//
function start(){
	main_canvas = document.getElementById("organism");
	main_context = main_canvas.getContext("2d");
	main_context.lineWidth = lineWidth;
	setUrlParams();
	createDots();
	//
	initTimer();
}

function setUrlParams(){
	var searchStr = window.location.search.substring(1);
    var paramArr = searchStr.split('&');
    for(var i = 0; i < paramArr.length; i++){
        var KeyValPair = paramArr[i].split('=');
        urlParams[KeyValPair[0]] = KeyValPair[1];
    }
	// console.log(KeyValPair, " |||||| " ,urlParams);
 	if(urlParams.neighbor == "true"){
 		mode = "neighbor";
 	}
 	if(!isNaN(urlParams.count)){
 		dotCount = urlParams.count;
 	}    
}

function createDots(){
	var rad;
	var dot;
	for (var i = 0; i < dotCount; i++) {
	
		rad = size;
	    dot = new Dot(
	    	i, 
			rad, 
			Math.random()*w, 
			Math.random()*h,
			Math.random()*speedMax, 
			"rgba(100,100,0,.1)"
		)
	    dotArray.push(dot)

	    // console.log(dot);
	}
}



function initTimer(){
	window.requestAnimationFrame(initTimer);
	update();
}


function update() {
	main_context.clearRect(0,0,w*1.1,h*1.1);
	drawBG();
	var item, chance, sum, i;
	for (i = 0; i < dotCount; i++) {
	    item = dotArray[i];
	    main_context.fillStyle = "#7e796d";
	    main_context.strokeStyle = "#7e796d";
	    main_context.beginPath();
	    chance = Math.random()*4;
	    sum;

	    if(chance<=1){
	    	item.x+=item.speed;	
	    }else if(chance>1 && chance<=2){
	    	item.x-=item.speed;	
	    }else if(chance>2 && chance<=3){
	    	item.y+=item.speed;	
	    }else if(chance>3 && chance<=4){
	    	item.y-=item.speed;	
	    }else{
	    	// item.y = item.x = Math.random()*w;
	    }
	    main_context.arc(item.x, item.y, item.rad, 0,2*Math.PI, false);	
	    
	    main_context.fill();

	}
	if(mode=="neighbor"){
		drawLinesNeighbors();
	}else{
		drawLines();
	}


}

function drawBG(){
	main_context.rect(0,0,w,h);
	main_context.fillStyle = "#141925";
	main_context.fill();
}

function drawLines(){
	var item, secondItem;
	var i, k;
	for (i = 0; i < dotArray.length; i++) {
		for (k = i+1; k < dotArray.length; k++) {
			// logCount++;
			if(k>i){
				item = dotArray[i]; 
				secondItem = dotArray[k];
				main_context.beginPath();
				main_context.moveTo(item.x, item.y);
				main_context.lineTo(secondItem.x, secondItem.y);
				main_context.stroke();
			}
		}
	}
}

function drawLinesNeighbors(){
	var i, k;
	var item, secondItem, curDist;
	for (i = 0; i < dotArray.length; i++) {
		// dotArray[i].count = 0; 
		for (k = i+1; k < dotArray.length; k++) {
			// logCount++;
			item = dotArray[i];
			secondItem = dotArray[k];
			curDist = checkDist(item, secondItem);
			if(curDist<neigborDistance){
				// item.count++;
				main_context.beginPath();
				main_context.moveTo(item.x, item.y);
				main_context.lineTo(secondItem.x, secondItem.y);
				main_context.lineWidth = lineWidth;
				main_context.stroke();
			}		
		}
		
	}
}

function checkDist(itemA, itemB){
	var x1 = itemA.x;
	var y1 = itemA.y;
	var x2 = itemB.x;
	var y2 = itemB.y;

	var d = Math.sqrt( (x2-=x1)*x2 + (y2-=y1)*y2 );
	return d;
}

function Dot(i, rad, x, y, speed){
	this.i = i;
	this.rad = rad;
	this.x = x;
	this.y = y;
	this.speed = speed;
}

function drawDots(){
	for (var i = 0; i < 10; i++) {
		main_context.beginPath();
		main_context.arc((Math.random()*main_canvas.width), (Math.random()*main_canvas.height), 5, 0, 2 * Math.PI, false);
		main_context.fill();
		// main_context.closePath();
	}
}


