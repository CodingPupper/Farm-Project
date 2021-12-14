

//--------------------update input

pause = keyboard_check(vk_escape);

inputLeft	=keyboard_check(vk_left);
inputRight	=keyboard_check(vk_right);
inputUp		=keyboard_check(vk_up);
inputDown	=keyboard_check(vk_down);
inputWalk	=keyboard_check(vk_control);
inputRun	=keyboard_check(vk_shift);


//--------------------PauseMenu


if(pause){
	room_goto(pauseMenu)	
}


//--------------------alter speed

if		(inputWalk)		{spd=wSpd;}
else if	(inputRun)		{spd=rSpd;}
else					{spd=nSpd;}

//--------------------base 'idle' speed

moveX = 0;
moveY = 0;

//-------------------------Change Sprite for movement



if(moveX = 0 && moveY = 0){
	image_index = 4;
}

if(inputRight){
	image_index = 1;
}

if(inputLeft){
	image_index = 0;
}

if(inputDown){
	image_index = 2;
}

if(inputUp){
	image_index = 3;
}


//--------------------movement

moveX = (inputRight - inputLeft) * spd;
if(moveY==0){moveY = (inputDown - inputUp) * spd;}

//-------------------COLLISION CHECKS


//------Horizontal Collision

if(moveX != 0){ //If we are moving, then run collision code.
	if(place_meeting(x+moveX, y, other)){
		repeat(abs (moveX)){ //keeps repeating the code within the brackets until conditions are met.
			if(!place_meeting(x+sign(moveX), y, other)){
				x+= sign(moveX);
			} else { break;}
		}
		moveX=0;	
	}
}

if(moveX != 0){ //If we are moving, then run collision code.
	if(place_meeting(x+moveX, y, oWalls)){
		repeat(abs (moveX)){ //keeps repeating the code within the brackets until conditions are met.
			if(!place_meeting(x+sign(moveX), y, oWalls)){
				x+= sign(moveX);
			} else { break;}
		}
		moveX=0;	
	}
}
		
//------Vertical Collision

if(moveY != 0){
	if(place_meeting(x, y+moveY, other)){
		repeat(abs (moveY)){ //keeps repeating the code within the brackets until conditions are met.
			if(!place_meeting(x, y+sign(moveY), other)){
				y+= sign(moveY);
			} else { break;}
		}
		moveY=0;
	}
}

if(moveY != 0){
	if(place_meeting(x, y+moveY, oWalls)){
		repeat(abs (moveY)){ //keeps repeating the code within the brackets until conditions are met.
			if(!place_meeting(x, y+sign(moveY), oWalls)){
				y+= sign(moveY);
			} else { break;}
		}
		moveY=0;
	}
}

if(place_meeting(x, y, oTransition)){
	audio_stop_all();
	room_goto(oTransition.targetRoom);
}



x += moveX;
y += moveY;