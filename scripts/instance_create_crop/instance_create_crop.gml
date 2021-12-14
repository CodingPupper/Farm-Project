///@description instance_create_crop
///@arg x
///@arg y
///@arg crop_type=

function instance_create_crop(argument0, argument1, argument2){




var cs = cellSize;
var gx = argument0 div cs;
var gy = argument1 div cs;
var i_grid = ocropmode.ds_crops_instances;
var cell = i_grid[# gx, gy];

var xx = gx*cs;
var yy = gy*cs;

if(cell == 0){


	//check for soil

	var lay_id = layer_get_id("plotland");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, argument0, argument1);




	if(data == 0) {
		show_debug_message("There is no tile here.");
		return false;
	} else {
		show_debug_message("Soil :D")
	}

	//create instance
	var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", oCrop);
	i_grid[# gx, gy] = inst;


	//Give crop its characteristics

	with(inst) {
		cropType = argument2;
		growStgDur = ocropmode.ds_crops_types[# 0, cropType];
	}

	return inst;


} else {
	show_debug_message("There is already something there!")
	return false;
}
}