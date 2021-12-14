///@description

if(!planting) exit;

var cs = cellSize;
var gx = (mx div cs);
var gy = (my div cs);


var c = c_red;
var cell = ds_crops_instances[# gx, gy];

if (cell ==0){
	var lay_id = layer_get_id("plotland");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, mx, my);

	if(data != 0) {c = c_green;}
}

xx = gx*cs;
yy = gy*cs;

//plant indication
draw_rectangle_color(xx, yy, xx+cs, yy+cs, c, c, c, c, true);

//draw crop to be planted
draw_sprite(sCropSelect, selectCrop, xx+(cs/2), yy+(cs/2))