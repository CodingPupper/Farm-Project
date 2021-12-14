


//-------------------COLLISION CHECKS


//------Horizontal Collision


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
	if(place_meeting(x, y+moveY, oWalls)){
		repeat(abs (moveY)){ //keeps repeating the code within the brackets until conditions are met.
			if(!place_meeting(x, y+sign(moveY), oWalls)){
				y+= sign(moveY);
			} else { break;}
		}
		moveY=0;
	}
}


x += moveX;
y += moveY;