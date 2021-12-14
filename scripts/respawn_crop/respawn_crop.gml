///@description respawnCrop
///@arg grid_x
///@arg grid_y
///@arg crop_type
///@arg days_old

function respawn_crop(argument0, argument1, argument2, argument3){
	
var xx = argument0*cellSize;
var yy = argument1*cellSize;
	
	//create the instance
	var inst = instance_create_layer(xx+(cellSize/2), yy+(cellSize/2), "Instances", oCrop);
	
	ds_crops_instances[# argument0, argument1] = inst;
	
	
	//give crop characteristics
	with(inst){
		cropType = argument2;
		daysOld = argument3;
		growStgDur = ocropmode.ds_crops_types[# 0, cropType];
	
	}

return inst;

}

