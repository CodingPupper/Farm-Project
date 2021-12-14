
moveX = 0;
moveY = 0;

randomize();

var idle = choose(0,1); 
if(idle=0){						//--------Cases essemtally are if statements for ranges like we have.
	var dir = choose(1, 2, 3, 4);	//----For each option we have here, it is determined as a "case"
	switch (dir){					//----We can then write "case #:" for each option and tell it what we want it to do for each.
		case 1: moveX = -spd break;	//----think of them like mini if statements.
		case 2: moveX = spd break;
		case 3: moveY = -spd break;
		case 4: moveY = spd break;
	}
}

//-----------------------Movement directions

if(moveX = 0 && moveY = 0){
	image_index = 4;
}

if(moveX > 0){
	image_index = 1;
}

if(moveX < 0){
	image_index = 0;
}

if(moveY > 0){
	image_index = 2;
}

if(moveY < 0){
	image_index = 3;
}



alarm[0] = random_range(0.5, 2.5)*room_speed;
