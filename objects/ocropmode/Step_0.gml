#region //planting
if(keyboard_check_pressed(ord("P"))) {planting = true}

if(planting){
	mx = mouse_x;
	my = mouse_y;
	
	
	if(mouse_wheel_up())  selectCrop += 1; 
	if(mouse_wheel_down())  selectCrop -= 1; 
	
	
	if(selectCrop > sprite_get_number(sCropSelect) - 1){ selectCrop = 0 }
	else if (selectCrop < 0) { selectCrop = sprite_get_number(sCropSelect)-1 }
	
	
	if(mouse_check_button_pressed(mb_left)){
		instance_create_crop(mouse_x, mouse_y, selectCrop);
	}
}
#endregion

if(instance_exists(oCrop) and keyboard_check_pressed(ord("G"))){
	with(oCrop){
		if(growStage < maxGrowthStg){
			daysOld += 1;
			growStage = daysOld div growStgDur
		}else{
			growStage = maxGrowthStg;
			fullyGrown=true;
		}
	}
}
