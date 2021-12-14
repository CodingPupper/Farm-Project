
if(keyboard_check_pressed(ord("R")))	{ game_restart(); }
if(keyboard_check_pressed(vk_escape)){
	room_goto(MainMenu);
	audio_stop_all();
}