
//@description - creatCrop
///@arg growStgDur
///@arg cost

function createCrop(argument0, argument1){

	var argNum = argument_count;

	if(!ds_exists(ds_crops_types, ds_type_grid)){
		ds_crops_types = ds_grid_create (argNum, 1);
		var height = 1;
	} else {
		var height = ds_grid_height(ds_crops_types);
		ds_grid_resize(ds_crops_types, argNum, height + 1);
		height+=1;
	}

	//

	var yy = height-1;

	var i = 0; repeat(argNum){					//the repeat allows us to mark each cell's start coordinate.
		ds_crops_types[# i, yy] = argument[i];	//This repeat loop allows us to create each grid cell withot having to type it all.
		i+= 1;									//
	}
}