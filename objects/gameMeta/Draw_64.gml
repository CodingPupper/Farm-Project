

if(doTrans=true){
	//Handle fade/room transition
	if(room != spawnRoom){
		blackAlpha += 0.1;
		if(blackAlpha >= 1) {
			room_goto(spawnRoom)
		} else {
			blackAlpha -= 0.1;
			if(blackAlpha <= 0){
				doTrans = false;
			}
		}
	}


	//-------------Draw Fade
	draw_set_alpha(blackAlpha);
	draw_rectangle_color(0, 0, guiW, guiH, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);

}