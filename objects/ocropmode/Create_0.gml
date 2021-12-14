
ds_crops_types = 0;
ds_crops_instances = 0;
ds_crops_data = (ds_grid_create(4, 1));
ds_grid_clear(ds_crops_data, -1);

 //crop data 
enum crop {
	potato, 
	tomato
}


createCrop(3, 30, "potato");	//potato
createCrop(4, 45, "tomato");	//tomato

planting = false;
selectCrop = 0;

mx = 0;
my = 0;

cellSize = 16;
