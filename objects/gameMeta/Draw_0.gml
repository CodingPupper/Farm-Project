
/*
var xx = 0;
var cs = cellSize;

draw_set_alpha(0.3);

var r = roomW div cs;
repeat(r){
	draw_line_color(xx, 0, xx, roomH, c_white, c_white)
	xx+=cs;
}


var yy = 0;

var r = roomH div cs;

repeat(r){
	draw_line_color(0, yy, roomW, yy, c_white, c_white)
	yy+=cs;
}

draw_set_alpha(1);